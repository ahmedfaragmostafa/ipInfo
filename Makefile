.DEFAULT_GOAL := help

OSFLAG 				:=
ifeq ($(OS),Windows_NT)
	OSFLAG = WIN
else
	UNAME_S := $(shell uname -s)
	ifeq ($(UNAME_S),Linux)
		OSFLAG = LINUX
	endif
	ifeq ($(UNAME_S),Darwin)
		OSFLAG = MAC
	endif
endif


help:
	@echo ""
	@echo "Available tasks:"
	@echo "    prepare                 		install wget package and other deps"
	@echo "    zshrc                 		Add ipInfo command to your .zshrc"
	@echo "    bashrc                 		Add ipInfo command to your .bashrc"
	@echo ""

prepare:

ifeq ($(OSFLAG), MAC)
	brew install wget jq
else
	sudo apt-get install wget
endif

init:
	cd ~/ && wget https://raw.githubusercontent.com/ahmedfaragmostafa/ipInfo/master/ipInfo.sh
zshrc:
	echo 'alias ipInfo="sh ~/ipInfo.sh"' >> ~/.zshrc && zsh


bashrc:
	echo 'alias ipInfo="sh ~/ipInfo.sh"' >> ~/.bashrc && source ~/.bashrc


zshrc: init zshrc
bashrc: init bashrc

.PHONY: help  init bashrc zshrc  all
