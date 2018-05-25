" vim-plug config (see https://github.com/junegunn/vim-plug)
call plug#begin('~/.vim/plugged')
" NERD tree will be loaded on the first invocation of NERDTreeToggle command
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-fugitive'

Plug 'kien/ctrlp.vim'

Plug 'tpope/vim-surround'

Plug 'jiangmiao/auto-pairs'

Plug 'Valloric/YouCompleteMe', { 'dir': '~/.vim/plugged/YouCompleteMe', 'do': 'git submodule update --init --recursive && ./install.py --js-completer --go-completer' }

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" automatically indent lines
set noautoindent

" Beep abstellen
set vb

"Syntax highlighting
syntax on

" select case-insenitiv search
set ignorecase

" show cursor line and column in the status line
set ruler

" shell to start with !
set shell=bash

" show matching brackets
set showmatch

" display mode INSERT/REPLACE/...
set showmode

" tabstops
set shiftwidth=4
set tabstop=4

" use ed-conform replacement syntax 
set edcompatible
" do not behave Vi-compatible as much as possible
set nocompatible
" changes special characters in search patterns
set magic

" Zeilenumbrüche löschen
set bs=2

" Automatisches einfügen
set ai

" pasten geht besser
set invpaste

" multiline editing helpers
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
set wmh=0

set ts=4
set background=dark

"set fileencodings=ucs-bom,utf-8,latin1
"set encoding=utf-8

map <F7> <Esc>:tabprev<CR>
map <F8> <Esc>:tabnext<CR>

" highlight all search matches
:set hlsearch
" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
