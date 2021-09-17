# dark-toggle

A small POSIX compliant shell script that uses `gsettings` to toggle between the dark and light variants of a GTK theme.

<p><img src="https://i.ibb.co/ng2s9kd/test.gif" alt="A gif showing dark-toggle" class="center"></p>

## Dependencies

+ `gsettings`
+ `notify-send` with an appropriate [notification daemon](https://wiki.archlinux.org/title/Desktop_notifications#Notification_servers) installed.

## Installation

Clone the repo and then copy `dark-toggle` to a directory that is in your `$PATH`. For current user this directory can be `~/.local/share/bin`, or for system wide installation, this can be `/usr/local/bin`. For example:

	cp dark-toggle ~/.local/share/bin/
	
Additionally, a `desktop` entry is provided for use with app launchers. In that case, after copying the `dark-toggle` script, additionally copy the `dark-toggle.desktop` file under `~/.local/share/applications` (for current user) or `/usr/share/applications` (for making it available for system-wide).

## Usage

Just call `dark-toggle` or use an app launcher to search and run `Dark Toggle`. See screenshot above.

## Note

Your current theme must have a dark variant of the theme for this script to work. Since, `gesttings` always exits with an exit code of `0`, there is no way to know whether an actual valid theme change did happen. A fallback to `Adwaita-dark` is planned to be added in the future. 


## Credits

This repo was made from a [GitHub Gist](https://gist.github.com/rifazn/584a94d6f79e13b320180e7c9ec81eea) where I appreciated much help from [newnix](https://gist.github.com/newnix).

