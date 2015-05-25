" Fix shell
set shell=/bin/bash

" Not compatible with Vi
set nocompatible

" Vundle
source ~/.vimrc_vundle

" Bundles
source ~/.vimrc_bundles

" User files (optional)
silent! source ~/.vimrc_user

" Enable mouse
set mouse=a
set ttymouse=xterm2
set foldmethod=syntax
set foldlevelstart=99
set scrolloff=2
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
nnoremap  <tab> :bn<CR>
nnoremap  <S-tab> :bp<CR>
nnoremap  <Space>  za

" Relative line numbers
set nu
set rnu

" Fix backspace
set backspace=indent,eol,start

" Colors
set t_Co=256
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
colorscheme obsidian
syntax on

" Ruler
set colorcolumn=80

" Tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
let g:indentLine_char = '|'
let g:indentLine_color_term = 239

" Powerline
set laststatus=2
let g:airline_powerline_fonts = 1

" Wrapping, side-scrolling
set nowrap

" Highlight search things
set hlsearch

" When pressing return after typing a comment, don't automatically start a new
" comment
au FileType * setlocal formatoptions-=r

" When a macro is created on q, let space replay that macro
noremap <Space> @q

" Eliminate delay in switching modes
set timeoutlen=1000 ttimeoutlen=0

" Highlight cursor line
set cursorline

" Disable spellchecking
set nospell

" Display
set encoding=utf-8
set t_Co=256

set hidden

" File type aliases
au BufNewFile,BufRead *.ejs set filetype=jst
au BufNewFile,BufRead *.less set filetype=less
au BufNewFile,BufRead *.swift set filetype=swift

" Searching
set hlsearch
set ignorecase
set smartcase

" NERDTree
map <C-e> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
