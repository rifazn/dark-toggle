PREFIX ?= /usr/local
DESKTOPPREFIX ?= $(PREFIX)/share/applications
DESKTOPICONPREFIX ?= $(PREFIX)/share/icons/hicolor
INSTALL ?= install

PROG = dark-toggle
CONFIG = config
ICON = icons/day-and-night1.png
DESKTOPFILE = dark-toggle.desktop

# Put the config file in ~/.config for a user install
ifeq ($(findstring ${HOME}, $(PREFIX)), ${HOME})
	CONFIGPREFIX ?= ${HOME}/.config
else
	CONFIGPREFIX ?= /etc
endif

ALL = install conf install-desktop

.PHONY: $(ALL) uninstall uninstall-desktop uninstall-all

all: $(ALL)


install: install-bin conf

install-bin: $(PROG)
	@printf "Installing $(PROG)\n"
	$(INSTALL) -m 0755 -d $(DESTDIR)$(PREFIX)/bin
	$(INSTALL) -m 0755 $(PROG) $(DESTDIR)$(PREFIX)/bin
	@printf "\n"

conf: $(CONFIG)
	@printf "Installing $(PROG) config file\n"
	$(INSTALL) -m 0755 -d $(DESTDIR)$(CONFIGPREFIX)/$(PROG)
	$(INSTALL) -m 0755 $(CONFIG) $(DESTDIR)$(CONFIGPREFIX)/$(PROG)
	@printf "\n"

install-desktop: $(DESKTOPFILE)
	@printf "Installing $(PROG) desktop entry\n"
	$(INSTALL) -m 0755 -d $(DESTDIR)$(DESKTOPPREFIX)
	$(INSTALL) -m 0644 $(DESKTOPFILE) $(DESTDIR)$(DESKTOPPREFIX)
	$(INSTALL) -m 0755 -d $(DESTDIR)$(DESKTOPICONPREFIX)/64x64/apps
	$(INSTALL) -m 0644 $(ICON) $(DESTDIR)$(DESKTOPICONPREFIX)/64x64/apps/dark-toggle.png
	@printf "\n"


uninstall: uninstall-bin uninstall-desktop

uninstall-bin:
	@printf "Uninstalling $(PROG)\n"
	$(RM) $(DESTDIR)$(PREFIX)/bin/$(PROG)
	$(RM) $(DESTDIR)$(CONFPREFIX)/$(PROG)/$(CONFIG)
	@printf "\n"

uninstall-desktop:
	@printf "Uninstalling $(PROG) desktop entry\n"
	$(RM) $(DESTDIR)$(DESKTOPPREFIX)/$(DESKTOPFILE)
	$(RM) $(DESTDIR)$(DESKTOPICONPREFIX)/64x64/apps/dark-toggle.png
	@printf "\n"

