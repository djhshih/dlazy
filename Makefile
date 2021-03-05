DESTDIR ?= /usr/local/bin

install:
	install bin/* $(DESTDIR)

