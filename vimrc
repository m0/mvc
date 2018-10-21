" vim-plug config (see https://github.com/junegunn/vim-plug)
call plug#begin('~/.vim/plugged')

" A Sublime Text 2/3 plugin to see git diff in gutter
Plug 'airblade/vim-gitgutter'

" fugitive.vim: A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'

Plug 'kien/ctrlp.vim'

Plug 'tpope/vim-surround'

Plug 'jiangmiao/auto-pairs'

Plug 'Valloric/YouCompleteMe', { 'dir': '~/.vim/plugged/YouCompleteMe', 'do': 'git submodule update --init --recursive && ./install.py --js-completer --go-completer' }

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'fatih/vim-go'

Plug 'arrufat/vala.vim'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" enable filetype-plugin for filetype specific config
filetype plugin on
au! BufNewFile,BufRead *.yml,*.yml.j2 setf yaml

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

" delete linebreaks
set backspace=2

" automatic insert
set ai

" bind F12 to toggle paste mode
set pastetoggle=<F12>

" multiline editing helpers
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
set wmh=0

set background=dark

"set fileencodings=ucs-bom,utf-8,latin1
"set encoding=utf-8

map <F7> <Esc>:tabprev<CR>
map <F8> <Esc>:tabnext<CR>

" highlight all search matches
:set hlsearch
" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" configure buftabs plugin
set statusline=%=buffers:\ %{buftabs#statusline()}

" set airline theme
let g:airline_theme='dark'

" YouCompleteMe optimization
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_collect_identifiers_from_tags_files = 1

" pretty format of tabs 'n stuff
:set list
:set listchars=tab:→\ ,trail:␣,extends:…,eol:⏎
:hi SpecialKey ctermfg=DarkGray
:hi NonText ctermfg=DarkGray

" switch off bell (beep and flashing)
:set belloff=all

" disable folding by default
:set nofoldenable

" show line numbers by default ...
set number
" ... and user F3 to toggle
noremap <F3> :set invnumber<CR>
inoremap <F3> <C-O>:set invnumber<CR>
