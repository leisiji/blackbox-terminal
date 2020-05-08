<div align="center">
    <h1>
        <!--<img src="https://gitlab.com/raggesilver/terminal/raw/master/data/icons/hicolor/scalable/apps/com.raggesilver.Proton.svg" />--> Terminal
    </h1>
    <h4>A pretty and Flatpak'ed Terminal for Linux</h4>
    <p>
        <a href="https://gitlab.com/raggesilver/terminal/pipelines">
            <img src="https://gitlab.com/raggesilver/terminal/badges/master/pipeline.svg" alt="Build Status" />
        </a>
        <a href="https://www.patreon.com/raggesilver">
            <img src="https://img.shields.io/badge/patreon-donate-orange.svg?logo=patreon" alt="Proton on Patreon" />
        </a>
    </p>
    <p>
        <a href="#install">Install</a> •
        <a href="#features">Features</a> •
        <!-- <a href="#features">Features</a> • -->
        <a href="https://gitlab.com/raggesilver/terminal/blob/master/LICENSE">License</a>
    </p>
</div>

> THIS IS WORK IN PROGRESS, NOTHING HERE IS EXPECTED TO WORK UNTIL VERSION
> 1.0.0 IS RELEASED -- Tho you can use it as a simple terminal

<div align="center">
    <img src="https://imgur.com/2vStnlw.png" alt="Preview"/>
</div>

The only reason this project exists is to create a user-themeable terminal app
that integrates the theme into the rest of the window.

Atm, the solarized theme is hard-coded.

## Features

- Pretty integration with the selected theme (however the theme is still
hard-coded)
- Ctrl+Shift+C/Ctrl+Shift+V for copy/paste
- Ctrl+Shift+N to open a new window

## Install

**Download**

[Flatpak](https://gitlab.com/raggesilver/terminal/-/jobs/artifacts/master/raw/terminal.flatpak?job=build) • [Zip](https://gitlab.com/raggesilver/terminal/-/jobs/artifacts/master/download?job=build)

*Note: these two links will not work if the latest pipeline failed/was skipped/is still running*

**Flathub**

<div align="center">
Wow, such empty!
</div>

## Compile

**Flatpak**

```bash
# Clone the repo
git clone --recursive https://gitlab.com/raggesilver/terminal
# cd into the repo
cd terminal
# Assuming you have make, flatpak and flatpak-builder installed
# Makefile has a few useful rules that will build and install Terminal as a
# flatpak locally on ./app_build and ./app
make run
# You can also
# make [command]
#
#   update      - update outdated dependencies
#   hard-update - remove and update all dependencies
#   export      - export terminal as a flatpak. Generates ./terminal.flatpak
#   install     - runs `export` then `flatpak install --user terminal.flatpak`
#   clean       - cleans build files
#   fclean      - cleans build files and dependencies
#   ffclean     - cleans build files, dependencies and .flatpak-builder
```

## UI Mocks

<div align="center">
Wow, such empty!
</div>

## Credits

<div align="center">
Wow, such empty!
</div>
