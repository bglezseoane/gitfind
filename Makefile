# Installation Makefile for Gitfind

PREFIX ?= /usr/local
MANPREFIX ?= "${PREFIX}/share/man/man1"

help:
	@echo "Please, use 'make install' to install. Changue Makefile's PREFIX and MANPREFIX variables to customize locations."

install:
	@mkdir -p ${DESTDIR}${MANPREFIX}
	@mkdir -p ${DESTDIR}${PREFIX}/bin
	@cp -f gitfind ${DESTDIR}${PREFIX}/bin
	@cp -f manpage.roff ${DESTDIR}${MANPREFIX}/gitfind.1

.PHONY: help
