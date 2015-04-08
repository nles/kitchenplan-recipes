#!/bin/bash
if [ "$1" == "rm" ]; then
	rm -rf ~/Library/Application\ Support/Alfred\ 2
	rm -rf ~/.ssh
	rm -rf ~/.vim
	rm ~/.vimrc
	rm ~/.bash_profile
	rm ~/.bash_prompt
	sudo rm /etc/hosts
fi

if [ -d ~/Library/Application\ Support/Alfred\ 2 ]; then
	echo "FOLDER Alfed 2 EXISTS!"
else
	cp -a 'skeletons/AppSupport/Alfred 2' ~/Library/Application\ Support/
fi

if [ -d ~/.ssh ]; then
	echo "FOLDER ~/.ssh EXISTS!"
else
	cp -a skeletons/ssh ~/.ssh
fi

if [ -d ~/.vim ]; then
	echo "FOLDER ~/.vim EXISTS!"
else
	cp -a skeletons/vim ~/.vim
fi

if [ -f ~/.vimrc ]; then
	echo "FILE ~/.vimrc EXISTS!"
else
	cp skeletons/vimrc ~/.vimrc
fi

if [ -f /etc/hosts/hosts ]; then
	echo "FILE /etc/hosts EXISTS!"
else
	sudo cp skeletons/hosts /etc/hosts 
fi

if [ -f ~/.bash_profile ]; then
	echo "FILE ~/.bash_profile EXISTS!"
else
	cp skeletons/bash_profile ~/.bash_profile 
fi

if [ -f ~/.bash_prompt ]; then
	echo "FILE ~/.bash_prompt EXISTS!"
else
	cp skeletons/bash_prompt ~/.bash_prompt 
fi
