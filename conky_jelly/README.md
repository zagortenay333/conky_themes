### Jelly :sunny: :umbrella: :cloud: :snowflake: :snowman:

A theme for [conky](https://github.com/brndnmtthws/conky) powered by [OpenWeatherMap](http://openweathermap.org/).

It displays the **time**, **date**, **current weather**.

---

### Compatibility:

The latest version of this theme is on the master branch, and it supports conky `1.10.x`.

For older versions, check the available [releases](../../releases).

---

### Installation

* Install **conky**, **curl** and **jq**.

* Install the [Roboto & Roboto Light](https://www.google.com/fonts/specimen/Roboto) fonts.

* Move the `.jelly-conky-icons` folder into your `~` dir.

* Pick a `.conkyrc` file from the `.jelly-conky-themes` folder and copy it into your `~` dir.

> **NOTE**  
> Some files/folders are hidden; unhide them. :smile:

---

### API Key

For now, you need to register a private API key on [OpenWeatherMap](http://openweathermap.org/) to get weather data.

Place the API key in the `template6` variable inside the `.conkyrc`file.

---

### City

[Find the ID of your city](http://bulk.openweathermap.org/sample/) and place it inside the `template7` variable inside the `.conkyrc` file.

---

### Language

By default this conky will use your default locale.

Edit the `template9` variable in the `.conkyrc` file to change the language.

---

### Units

Edit the `template8` variable inside the `.conkyrc` file to change the units.

---

### Colors

* Edit the `color` variables inside the `.conkyrc` file to change **text** color.

* To change the **icon** colors, first use the `render-pngs` script to render a folder of icons with the desired color, then change the icon sources in the `.conkyrc` file under the `Icon Sources` section.
    > * The script requires **inkscape**.
    > * The script uses the `SVG` folder to render png's.
    > * You should keep the size at **32(px)** for this conky.

---

<p align="center"><img src="preview.png" id="preview"></p>
