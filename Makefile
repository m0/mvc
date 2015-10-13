install:
	test -d ~/.vim || mkdir ~/.vim
	cp -vr autoload ~/.vim/
	cp -vr bundle ~/.vim/
	cp -vr vimrc ~/.vimrc
