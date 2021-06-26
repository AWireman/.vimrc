"Vundle Plugin Install
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"colorscheme/layout
Plugin 'sjl/badwolf'
Plugin 'reedes/vim-colors-pencil'
Plugin 'junegunn/goyo.vim'
Plugin 'nathanaelkane/vim-indent-guides'

"lightline
Plugin 'itchyny/lightline.vim'

call vundle#end()
filetype plugin indent on

"badwolf
colorscheme badwolf
syntax enable
set termguicolors

"pencil/goyo
function! s:goyo_enter()
	colorscheme pencil
endfunction
function! s:goyo_exit()
	colorscheme badwolf
endfunction
autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_exit()

"indent-guides
let g:indent_guides_size=1
let g:indent_guides_color_percent=1
let g:indent_guids_enable_on_vim_startup=1

"lightline
set laststatus=2
let g:lightline = { 'colorscheme': 'landscape' }
	
"proper tabbing
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4

"line-numbers
set number

"show-cursor
set cursorline

"auto complete brackets, parens, curlies, quotes
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

"fix tabs, auto indent
set expandtab
set tabstop=4
set autoindent
set backspace=indent,eol,start
set ruler
set showcmd

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"get rid of swap files
set nobackup
set nowritebackup
set noswapfile
