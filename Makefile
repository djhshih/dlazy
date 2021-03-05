DESTDIR ?= /usr/local

install:
	install bin/* $(DESTDIR)/bin

