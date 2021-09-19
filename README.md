# dark-toggle

A small POSIX compliant shell script that uses `gsettings` to toggle between the dark and light variants of a GTK theme.

<p class="center"><img src="https://i.ibb.co/ng2s9kd/test.gif" alt="A gif showing dark-toggle"></p>

For making Firefox change it's theme along with websites that support 'prefers-color-scheme', change Firefox's theme to 'System Default'. Also, to make website that don't use the 'prefers-color-scheme', use a blessing of an add-on [Dark Reader](https://addons.mozilla.org/en-US/firefox/addon/darkreader/).

**Disclosure:** For those who are running a Desktop Environment and would like to toggle theme modes automatically at day/night cycles, consider taking a look at using the [Night Theme Switcher](https://extensions.gnome.org/extension/2236/night-theme-switcher/) Gnome Shell Extension as it offers a more integrated approach as fits a DE like GNOME. This script is rather aimed more towards users of Window Managers (or those that prefer a more DIY approach). Subjectively, it's quite satisfying to be able to toggle a theme _at will_ by calling it from dmenu (and such). However, this script can be used for automatically toggling theme modes at certain times (or day/night cycles) by using the scipt in a `cronjob` or as a hook for `gammastep` or `redshift` (see `contribs/`).

## Dependencies

+ `gsettings`
+ `notify-send` with an appropriate [notification daemon](https://wiki.archlinux.org/title/Desktop_notifications#Notification_servers) installed.

## Installation

Clone the repo and then copy `dark-toggle` to a directory that is in your `$PATH`. For current user this directory can be `~/.local/share/bin`, or for system wide installation, this can be `/usr/local/bin`. For example:

	cp dark-toggle ~/.local/share/bin/
	
Additionally, a `desktop` entry is provided for use with app launchers. In that case, after copying the `dark-toggle` script, additionally copy the `dark-toggle.desktop` file under `~/.local/share/applications` (for current user) or `/usr/share/applications` (for making it available system-wide).

## Usage

Just run `dark-toggle` or use an app launcher to search and run `Dark Toggle`. See screenshot above.

The script _just works_ for themes whose names use the simple `-light` and `-dark` suffixes. The following themes are examples of such theme names and are guartanteed to work:

	Arc ↔ Arc-Dark
	Adwaita ↔ Adwaita-dark
	Zorin*-Light ↔ Zorin*-Dark
	
For themes with more varied names (like `Qogir-win`) a better technique than just hardcoding my script for all known theme names is being considered.

## Credits

This repo was made from a [GitHub Gist](https://gist.github.com/rifazn/584a94d6f79e13b320180e7c9ec81eea) where I appreciated much help from [newnix](https://gist.github.com/newnix).

