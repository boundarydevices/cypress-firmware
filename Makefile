FIRMWAREDIR = /lib/firmware

all:

install:
	mkdir -p $(DESTDIR)$(FIRMWAREDIR)
	cp -r * $(DESTDIR)$(FIRMWAREDIR)
	find $(DESTDIR)$(FIRMWAREDIR) \( -name 'WHENCE' -or -name 'LICENSE.*' -or \
		-name 'LICENCE.*' -or -name 'Makefile' -or -name 'Android.mk' \) \
		-exec rm -- {} \;
