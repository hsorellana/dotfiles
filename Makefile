sync:
	[ -f ~/.bash_profile ] || ln -s $(PWD)/.bash_profile ~/.bash_profile
	[ -f ~/.bashrc ] || ln -s $(PWD)/bashrc ~/.bashrc
	[ -f ~/.gitconfig ] || ln -s $(PWD)/gitconfig ~/.gitconfig

	# don't show last login message
	touch ~/.hushlogin
