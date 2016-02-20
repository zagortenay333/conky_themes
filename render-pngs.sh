#! /bin/bash


#======================================
#   ANSI
#======================================
ansi_reset='\e[0m'
bold='\e[1m'
blue='\e[34m'
yellow_b='\e[1;33m'
red_b='\e[1;31m'
darkgray_b='\e[1;90m'


#======================================
#   Global Variables
#======================================
INKSCAPE="/usr/bin/inkscape"
SOURCE="SVG/*.svg"
PNG_DEST=".harmattan-assets/icons"
DEFAULT_COLOR="#000"
DEFAULT_SIZE="32"


#======================================
#   User Input
#======================================
echo
echo -e "${bold}Enter icon size (skip for default icon dimensions): ${ansi_reset}"
read -r SIZE
echo -e "${bold}Enter 1 or more colors (space or tab separated): ${ansi_reset}"
read -r -a ICON_COLORS


#======================================
#   Checks
#======================================

# If no colors given, add default color to array
if [ ${#ICON_COLORS[*]} -eq 0 ]; then
    ICON_COLORS[0]="$DEFAULT_COLOR"
fi

# Ensure PNG_DEST
mkdir -p "$PNG_DEST"

# If SIZE not provided, use DEFAULT_SIZE
SIZE=${SIZE:-"$DEFAULT_SIZE"}


#======================================
#   RENDER
#======================================

# Loop over colors
for color in ${ICON_COLORS[*]}; do

    echo
    echo -e "${darkgray_b}-------------------------------------------${ansi_reset}"


    # Check  whether the png folder already exits
    if [ -d "$PNG_DEST/${color}__${SIZE}" ]; then
        echo
        echo -e "${red_b}$PNG_DEST/${color}__${SIZE} already exists!${ansi_reset}"
        continue
    fi


    # Create dir with color name
    mkdir -p "${color}__${SIZE}"


    # Trap sed
    trap 'sed -i "s/<path fill=\"$color\"/<path/" $SOURCE; exit' INT TERM


    # Temporarily edit svg's
    sed -i "s/<path/<path fill=\"$color\"/" $SOURCE


    # Loop through SVG folder & render png's
    for i in $SOURCE; do

        # Get basename
        i2=${i##*/}  i2=${i2%.*}


        # If png exists, skip
        if [ -f "${color}__${SIZE}/$i2.png" ]; then
            echo
            echo -e "${darkgray_b}${color}__${SIZE}/$i2.png exists.${ansi_reset}"

        else
            echo
            echo -e "${blue}Rendering ${yellow_b}${color}__${SIZE}/$i2.png${ansi_reset}"

            "$INKSCAPE"  -e "${color}__${SIZE}/$i2.png" "$i" \
                         --export-width="$SIZE" --export-height="$SIZE" &> /dev/null
        fi
    done


    # Inkscape doesn't work well with dir paths
    # Move folder manually
    mv "${color}__${SIZE}" "$PNG_DEST"


    # Revert edit of svg's before next iteration or EXIT
    sed -i "s/<path fill=\"$color\"/<path/" $SOURCE

done
exit 0
