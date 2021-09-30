# dark-toggle

A POSIX compliant shell script that uses `gsettings` to toggle between the dark and light variants of a GTK theme.

<p align="center"><img src="https://i.ibb.co/ng2s9kd/test.gif" alt="A gif showing dark-toggle"></p>

This is a simple script that _just_ toggles your gtk theme. Adding features like automating at day/night cycles is not intended. However, it _can_ be used to automate theme toggling by using it as a `cronjob` or as a hook for tools like `gammastep`, or `redshift`. Check out the `contribs` directory (currently non-existant) for some examples. This simplicity, hopefully, will be more appreciated to those who use a Window Manager (as opposed to running a full DE). But DE users are of course, welcomed, nonetheless. As an extra note, Gnome Shell users can consider looking into the extension [Night Theme Switcher](https://extensions.gnome.org/extension/2236/night-theme-switcher/) which supports automatic day/night toggling out of the box.

The preview image is using the excellent [Dark Reader]() add-on for Firefox to make websites that don't implement _"prefers-color-scheme"_ to change their modes. Make sure to have Firefox's theme set to _"System Default"_.

## Dependencies

+ `gsettings`
+ `notify-send` with an appropriate [notification daemon](https://wiki.archlinux.org/title/Desktop_notifications#Notification_servers) installed.

## Installation

Clone the repo and then copy `dark-toggle` to a directory that is in your `$PATH`. For current user this directory can be `~/.local/share/bin`, or for system wide installation, this can be `/usr/local/bin`. For example:

	cp dark-toggle ~/.local/share/bin/
	
Also copy the default config file provided (which enables script to work on more varied theme names) to `~/.config/dark-toggle/config`.

	mkdir -p ~/.config/dark-toggle/config
	cp config ~/.config/dark-toggle/config
	
Additionally, a `desktop` entry is provided for use with app launchers. In that case, after copying the `dark-toggle` script, copy the `dark-toggle.desktop` file under `~/.local/share/applications` (for current user) or `/usr/share/applications` (for making it available system-wide).

## Usage

Just run `dark-toggle` or use an app launcher to search and run `Dark Toggle`. See screenshot above.

The script _just works_ for themes whose names use the simple `-light` and `-dark` suffixes. The following themes are examples of such theme names and are guartanteed to work:

	Arc ↔ Arc-Dark
	Adwaita ↔ Adwaita-dark
	Zorin*-Light ↔ Zorin*-Dark
	
For themes with more varied names (like `Qogir-win`, `Plata-Noir`, etc.), see Configuration.

## Configuration

A config file can be used to add user-defined mappings between light/dark variant of themes. For example:

```sh
# ~/.config/dark-toggle/config
theme_mappings="Adapta: Adapta-Nokto,  Plata: Plata-Noir,  Arc-Darker:Arc-Dark"
```

This is useful when a theme might have more than two variants and the user would like to specify which of the two variants they would like to use.

This config file will also be updated as part of the repo to allow toggling between theme names that are a little exotic (i.e. don't follow the convention of suffixing thme names with `-dark`/`-light`). So if your favorite theme is not working with `dark-toggle`, please update the repo's config file and send in a PR! It's much appreciated!

## Credits

This repo was made from a [GitHub Gist](https://gist.github.com/rifazn/584a94d6f79e13b320180e7c9ec81eea) where I appreciated much help from [newnix](https://gist.github.com/newnix).

