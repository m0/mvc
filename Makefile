install: checkdeps
	test -d ~/.vim || mkdir ~/.vim
	test -e ~/.vim/autoload/plug.vim || curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	cp -vr vimrc ~/.vimrc
	@echo
	@echo "Don't forget to run :PlugInstall (and maybe :PlugClean) in vim!"
	@echo

checkdeps:
	test -n "$(shell which cmake)"
