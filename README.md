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
* [Credits](CREDITS.md)
* [Preview](#preview)

---

### Compatibility:

The latest version of this theme is on the master branch, and it supports conky `1.10.x`.

For older versions, check the available [releases](../../releases).

---

### Installation:

* Install **conky**, **curl** and **jq**.

* Make sure you have the **Droid Sans** font installed.

* Move the `.harmattan-assets` folder into your `~` dir.

* Each theme is made of a single `.conkyrc` file which sits at the end of a file path inside the `.harmattan-themes` folder.
To activate a certain theme, move it's `.conkyrc` file into your `~` dir.

> **NOTE:**  
> Some files/folders are hidden; unhide them. :smile:

---

### API Key

Register a private API key on [OpenWeatherMap](http://openweathermap.org/) to get weather data.

Place the API key in the `template6` variable inside the `.conkyrc`file.

---

### City

[Find the ID of your city](http://openweathermap.org/help/city_list.txt) and place it inside the `template7` variable inside the `.conkyrc` file.

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

> **NOTE:**  
> The **`Mini`** form factor doesn't have the **`Photo-mode`**.

---

<img src="http://orig02.deviantart.net/f294/f/2016/232/e/b/conky_harmattan_by_zagortenay333-d720use.png" id="preview">
