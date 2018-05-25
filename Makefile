install:
	test -d ~/.vim || mkdir ~/.vim
	test -e ~/.vim/autoload/plug.vim || curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	cp -vr vimrc ~/.vimrc
	@echo "\nDon't forget to run :PlugInstall in vim!\n"
