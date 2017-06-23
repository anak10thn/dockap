DOCKER := $(shell which docker 2> /dev/null)
.PHONY: all install uninstall

all: install

install:

ifndef DOCKER
	$(error "Docker is not installed!")
endif
			cp dockap /usr/bin

uninstall:

			rm /usr/bin/dockap
