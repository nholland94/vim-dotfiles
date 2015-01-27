execute pathogen#infect()
syntax on
filetype plugin indent on

set t_Co=256
let g:mirodark_disable_color_approximation=1
colorscheme mirodark

" if has('vim_starting')
" set nocompatible
" set runtimepath+=~/.vim/bundle/dart-vim-plugin
" endif

" global remaps
vnoremap <C-y> :w !xclip -selection c<CR><CR>

function InsertClipboard()
  let l:output = substitute(system("xclip -selection c -o"), "[\r\n]", "", "")
  execute 'normal i' . l:output
endfunction
nnoremap <C-p> :set paste<CR>:call InsertClipboard()<CR>:set nopaste<CR>

function SilverSearchVisualSelection()
  let l:str = @"
  execute 'Ag' l:str
endfunction

nnoremap <C-f> :Ag 
vnoremap <C-f> y:call SilverSearchVisualSelection()<CR>

au FileType python set omnifunc=pythoncomplete#Complete
au FileType javascript set omnifunc=javascriptcomplete#CompleteJS
au FileType html set omnifunc=htmlcomplete#CompleteTags
au FileType css set omnifunc=csscomplete#CompleteCSS
au FileType xml set omnifunc=xmlcomplete#CompleteTags
au FileType php set omnifunc=phpcomplete#CompletePHP
au FileType c set omnifunc=ccomplete#Complete

au Filetype gitcommit setlocal spell textwidth=72
au Filetype ruby,eruby set filetype=ruby.eruby.chef
au Filetype Gemfile set filetype=ruby

" vim-go
au FileType go nmap <Leader>r <Plug>(go-run)
au FileType go nmap <Leader>b <Plug>(go-build)
au FileType go nmap <Leader>t <Plug>(go-test)
au FileType go nmap <Leader>c <Plug>(go-coverage)

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

" Airline setup
set laststatus=2
let g:airline_theme="kolor"
