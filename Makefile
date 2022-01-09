PREFIX ?= /usr/local
DESKTOPPREFIX ?= $(PREFIX)/share/applications
DESKTOPICONPREFIX ?= $(PREFIX)/share/icons/hicolor
INSTALL ?= install

PROG = dark-toggle
ICON = icons/day-and-night1.png
DESKTOPFILE = dark-toggle.desktop

ALL = install install-desktop

.PHONY: $(ALL) uninstall uninstall-desktop uninstall-all

all: $(ALL)

install: $(PROG)
	$(INSTALL) -m 0755 -d $(DESTDIR)$(PREFIX)/bin
	$(INSTALL) -m 0755 $(PROG) $(DESTDIR)$(PREFIX)/bin

install-desktop: $(DESKTOPFILE)
	$(INSTALL) -m 0755 -d $(DESTDIR)$(DESKTOPPREFIX)
	$(INSTALL) -m 0644 $(DESKTOPFILE) $(DESTDIR)$(DESKTOPPREFIX)
	$(INSTALL) -m 0755 -d $(DESTDIR)$(DESKTOPICONPREFIX)/64x64/apps
	$(INSTALL) -m 0644 $(ICON) $(DESTDIR)$(DESKTOPICONPREFIX)/64x64/apps/dark-toggle.png

uninstall-all: uninstall uninstall-desktop

uninstall-desktop:
	$(RM) $(DESTDIR)$(DESKTOPPREFIX)/$(DESKTOPFILE)
	$(RM) $(DESTDIR)$(DESKTOPICONPREFIX)/64x64/apps/dark-toggle.png

uninstall:
	$(RM) $(DESTDIR)$(PREFIX)/bin/$(PROG)

