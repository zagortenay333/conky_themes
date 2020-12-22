### Harmattan :sunny: :umbrella: :cloud: :snowflake: :snowman:

A theme for [conky](https://github.com/brndnmtthws/conky) powered by [OpenWeatherMap](http://openweathermap.org/).

---

* [Compatibility](#compatibility)
* [Installation](#installation)
* [API-key](#api-key)
* [City](#city)
* [Language](#language)
* [Units](#units)
* [Themes](#themes)
* [Form Factors](#form-factors)
* [Modes](#modes)
* [Network Section](#network-section)
* [Rendering Weather Icons](#rendering-weather-icons)
* [Preview](#preview)

---

### Compatibility:

The latest version of this theme is on the master branch, and it supports conky `1.10.x`.

For older versions, check the available [releases](../../releases).

---

### Installation:

* Install **conky**, **curl**, **jq** and **bc**.
  * On Ubuntu 16.04+, you may need to install `conky-all` instead of the transitional package `conky`.

* Make sure you have the **Droid Sans** font installed.

* Move the `.harmattan-assets` folder into your `~` dir.

* Each theme is made of a single `.conkyrc` file which sits at the end of a file path inside the `.harmattan-themes` folder.

> **NOTE:**  
> Some files/folders are hidden; unhide them. :smile:

> **NOTE 2:**
> There is a `preview.sh` script which will copy the assets and then allow you to interactively play around with the themes.

---

### API Key

Register a private API key on [OpenWeatherMap](http://openweathermap.org/) to get weather data.

Place the API key in the `template6` variable inside the `.conkyrc`file.

---

### City

[Find the ID of your city](http://bulk.openweathermap.org/sample/) and place it inside the `template7` variable inside the `.conkyrc` file.

---

### Language

By default this conky will use your default locale.

Edit the `template9` variable in the `.conkyrc` file to change the language.

[See the list of supported languages](http://openweathermap.org/current#multi)

> **NOTE:**  
> **`God-mode`** has some hardcoded text that won't get translated, but you can edit it manually.

---

### Units

Edit the `template8` variable inside the `.conkyrc` file to change the units.

---

### Themes:

| #      | Name               | Modes
| :----: | ------------------ | :-----:
| **1**  | Cards              | All
| **2**  | Elementary         | All
| **3**  | Elune              | All
| **4**  | Flatts             | All
| **6**  | New-Minty          | No **`Photo-mode`** :heavy_exclamation_mark:
| **5**  | Metro              | All
| **7**  | Nord               | All
| **8**  | Numix              | All
| **9**  | Transparent        | No **`Photo-mode`** :heavy_exclamation_mark:
| **10** | Ubuntu-Touch       | All
| **11** | Zukitwo            | All
| **12** | Glass              | No **`Photo-mode`** :heavy_exclamation_mark:
| **13** | Button             | All
| **14** | Texture            | All
| **15** | OMG-Ubuntu!        | All
| **16** | Brown-Card         | All
| **17** | Ciliora-Prima      | No **`Photo-mode`** :heavy_exclamation_mark:
| **18** | Ciliora-Prima-v2   | All
| **19** | Ciliora-Secunda    | All
| **20** | Ciliora-Secunda-v2 | No **`Photo-mode`** :heavy_exclamation_mark:
| **21** | Ciliora-Tertia     | All
| **22** | Ciliora-Tertia-v2  | No **`Photo-mode`** :heavy_exclamation_mark:

> **NOTE:**  
> The **`Mini`** form factor in all themes doesn't have the **`Photo-mode`**.

---

### Form factors:

| #     | Name         | Description
| :---: | ------------ | ------------
| **1** | Mini         | <ul><li>Current temperature</li><li>Forecast for next 2 days</li></ul>
| **2** | Compact      | <ul><li>Detailed current conditions</li><li>Forecast for today & the next 2 days</li></ul>
| **3** | Comfortable  | **Same as `Compact-mode` plus:** <ul><li>Sunrise/sunset info</li><li>Current weather icon</li><li>More padding</li></ul>
| **4** | God-Mode     | <ul><li>Clock</li><li>**`Compact-mode`**</li><li>Network info</li><li>Cpu + mem + uptime + total load</li><li>Processes</li></ul>

---

### Modes:

| #     | Name         | Description
| :---: | ------------ | ------------
| **1** | Normal       | Icon used to display current weather
| **2** | Photo        | Photo used to display current weather

---

### Network Section:

In case the network section doesn't display in **`God-mode`**, you need to find the name of your network interface and plug it in manually [@](https://github.com/zagortenay333/Harmattan/blob/4ef1a09e960d8e5d3da34a2550bfe5ef03523549/.harmattan-themes/Flatts/God-Mode/normal-mode/.conkyrc#L189-L192).

> **NOTE:**  
> Replace the `ppp0` string.

---

### Rendering Weather Icons:

You can render a fresh set of weather icons in any color/size you want using the `render-pngs` script.

> **NOTE:**  
> The script requires **inkscape**.  
> The script uses the `SVG` dir to render the pngs.

---

<img src="https://i.imgur.com/VzSHa7P.png" id="preview">
