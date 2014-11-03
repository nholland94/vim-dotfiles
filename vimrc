execute pathogen#infect()
syntax on
filetype plugin indent on

" if has('vim_starting')
" set nocompatible
" set runtimepath+=~/.vim/bundle/dart-vim-plugin
" endif

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

au Filetype gitcommit setlocal spell textwidth=72
au Filetype ruby,eruby set filetype=ruby.eruby.chef
au Filetype Gemfile set filetype=ruby

" default settings
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set expandtab
set mouse=a
set ttymouse=xterm2
set visualbell
set t_vb=

" vim working files
set backup
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" Omnifunc setup
let Omnifunc_GlobalScopeSearch   = 1
let Omnifunc_DisplayMode         = 1
let Omnifunc_ShowPrototypeInAbbr = 1 "show prototype in pop-up
let Omnifunc_ShowAccess          = 1 "show access in pop-up
let Omnifunc_SelectFirstItem     = 1 "select first item in pop-up
set completeopt=menuone,menu,longest
