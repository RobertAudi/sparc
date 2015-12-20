#!/usr/bin/env make

# Locations
SHELL = /bin/sh
PREFIX ?= /usr/local

# Compiler warnings: Ignore all
CWARN= -w

# Compiler standard
CSTD= -std=c99

# Compiler bit architecture
ARCH=

# Optimization
OPT= -O3

# Default flags for ANSI C compilation
CFLAGS?= ${CWARN} ${CSTD} ${ARCH} ${OPT} -include stdio.h -include stdlib.h -D'_(x)=strtof(b[x],0)'

# ANSI compiler
CC = cc

all: sparc sparkl

sparc: sparc.c
	$(CC) $(CFLAGS) $< -o $@

sparkl: sparkl.c
	${CC} ${CFLAGS} $< -o $@

clean:
	rm -f sparc
	rm -f sparkl

install: all
	cp sparc  $(PREFIX)/bin/
	cp sparkl $(PREFIX)/bin/

uninstall:
	rm -f $(PREFIX)/bin/sparc
	rm -f $(PREFIX)/bin/sparkl
