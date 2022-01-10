<h1 style="border-bottom: 2px solid;">
<img src="https://user-images.githubusercontent.com/3108565/147838578-781868ef-aa7b-413f-9327-6296b8615b56.png" alt="icon"
	style="width:64px; margin-right: 5px;">
dark-toggle
</h1>

A shell script that toggles between the _dark_ and _light_ variants of the current GTK theme. Works for the GNOME shell theme and icon themes too. POSIX compliant.

## Demo

https://user-images.githubusercontent.com/3108565/147882436-618ba345-730b-4aab-84ea-295a6f22b2d8.mp4

For more demos of `dark-toggle` running on the default GNOME Shell and Ubuntu can be found [below](#more-demos).

## Highlights

- Easy and instantaneous. Toggle darkness at will!
- Works the same for _Window Managers_ and the _Gnome Shell_ alike. No need to have any _Gnome Shell Extensions_ installed!
- Is extendable using _hooks_ (WIP). Changing the theme of your terminal emulator will soon be possible!
- Can easily be used as a _hook_ in other programs like [gammastep](https://gitlab.com/chinstrap/gammastep) and [redshift](https://github.com/jonls/redshift).
- No need to wait for a day/night cycle.
- No mouse interaction needed.

## Dependencies

+ `gsettings`
+ `notify-send` with an appropriate [notification daemon](https://wiki.archlinux.org/title/Desktop_notifications#Notification_servers) installed.

## Installation

Install system-wide for all users (requires root user or `sudo`):

	make

Install for current user only:

	make PREFIX=~/.local

For current-user only, make sure `~/.local/bin` is in your `$PATH`.

## Usage

Just run `dark-toggle` or use an app launcher to search and run `Dark Toggle`. CLI options are not added yet, but see [Configuration](#configuration).

## Configuration

By default, `dark-toggle` only changes the GTK Applications theme. However, further options can be added as necessary from the table below:

 Option | Description
----------------|----------------------------------
`change-shell` | Also change the GNOME Shell theme. (GNOME Shell must be running and [User Themes extension](https://extensions.gnome.org/extension/19/user-themes/) must be installed.)
`change-icons` | Also change the icon theme.
`exec-hooks` | Execute a hook each time `dark-toggle` is run (not implemented yet)

The config file can also be used to add user-defined mappings between light and dark variant of themes.

Example of a config file:

```sh
# ~/.config/dark-toggle/config

## Options
#
# Guess the icon name from the gtk theme name and change to it
change-icons

# Also change the gnome shell theme
change-shell

# Run hooks found in hooks dir
exec-hooks

# Put user-defined mappings and also mappings for theme names that cannot be guessed.
mappings {
	# Light		Dark
	Adapta		Adapta-Nokto
	Plata		Plata-Noir
	Qogir-win	Qogir-dark
	Plata-Lumine	Plata-Noir
}
```

This is also useful when a theme might have more than two variants and the user would like to specify which of the two variants they would like to use.

## More Demos

### GNOME Shell

_Adwaita theme_

https://user-images.githubusercontent.com/3108565/147814344-41b6b278-8872-48fb-a7d4-4a145509270b.mp4

_Plata theme_

https://user-images.githubusercontent.com/3108565/147814701-390c4705-d108-45cd-8ba1-17db58ea1a37.mp4

_ZorinGreen theme_

https://user-images.githubusercontent.com/3108565/147814722-c3a7dfb0-5a58-4766-8949-6026d7148ef4.mp4

_Ubuntu_

Demoing on the themes Yaru, Adwaita and Materia:

http://0x0.st/osSc.mp4

## Note:

The demos shown here are using the excellent [Dark Reader](https://addons.mozilla.org/en-US/firefox/addon/darkreader/) add-on for Firefox.

Those looking for a Gnome Shell Extension, as opposed to this cli tool, can try the [Night Theme Switcher](https://extensions.gnome.org/extension/2236/night-theme-switcher/) extension... But have you seen this tool's [#Highlights](#highlights)?

## Credits

This repo was made from a [GitHub Gist](https://gist.github.com/rifazn/584a94d6f79e13b320180e7c9ec81eea) where I appreciated much help from [newnix](https://gist.github.com/newnix).

