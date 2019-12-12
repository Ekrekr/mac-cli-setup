# Mac CLI Setup

Set up for a great CLI workspace on a mac.

* Currently hard-coded configuration username `eli`.

## How To Use

1. `chmod a+x run.sh && sudo ./run.sh`

1. Open VSCode by right clicking on the application in `~/Applications` and then `open`, as that is required in order to make it trusted. Close it afterwards

1. `chmod a+x install-vscode-plugins.sh && ./install-vscode-plugins.sh`

1. After complete, open **iterm**, press `⌘ ,` for settings. Then to load the right iterm profile, do **Profiles-> Other Actions (dropdown in bottom left) -> Import Json Profiles -> iterm-profile.json -> set as default**

1. Open firefox

    1. install [Ublock Origin](https://addons.mozilla.org/en-GB/firefox/addon/ublock-origin/)

    2. **(Triple bar) -> Customise -> Toolbars (at bottom) -> Bookmarks Toolbar**

    3. **Themes (at bottom) -> Dark**

    4. **Density (at bottom) -> Compact**, then press done

1. Set github config

    1. `git config --global user.name "Elias Kassell"`

    2. `git config --global user.email "eliaskasell@gmail.com`

1. Set up a github SSH key, as defined [here](https://help.github.com/en/enterprise/2.17/user/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

## Terminal

The script sets up the terminal essentially as suggested by Kevin Smets [here](https://gist.github.com/kevin-smets/8568070). This includes Iterm2, Oh-My-Zsh, PowerLevel10k, Solarized Dark Theme, agnostic theme, nerd icons, and syntax highlighting.
