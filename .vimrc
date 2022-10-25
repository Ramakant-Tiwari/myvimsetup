set nowrap
"set t_Co=256
set background=light
colorscheme papercolor
set number nocompatible cursorline cursorcolumn shiftwidth=4  tabstop=4 expandtab nobackup scrolloff=10 incsearch showcmd showmatch hlsearch history=1000 wildmenu wildmode=list:longest wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
filetype on
filetype plugin on
filetype indent on
syntax on
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END

let mapleader = ","
inoremap qq <esc> 
nnoremap <leader>, :nohlsearch<CR>
nnoremap <c-t> :NERDTreeToggle<cr>
nnoremap <down> j
nnoremap <up> k
nnoremap <left> h
nnoremap <right> l

" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

    Plug 'dense-analysis/ale'
    Plug 'preservim/nerdtree'
    Plug 'NLKNguyen/papercolor-theme'

call plug#end()

" }}}

" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

"Show the status on the second to last line.
set laststatus=2

" }}}







set number
set bg=light
set t_Co=256

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Raimondi/delimitMate'
Plug 'vim-syntastic/syntastic'
Plug 'ervandew/supertab'
Plug 'NLKNguyen/papercolor-theme'
Plug 'tmsvg/pear-tree'

call plug#end()


colorscheme papercolor
nnoremap <C-t> :NERDTreeToggle<CR>
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
noremap <up> k
noremap <down> j
noremap <left> h
noremap <right> l 
let g:NERDCreateDefaultMappings = 1

nnoremap str i#include<iostream><Esc>ousing namespace std;<Esc>o<CR>int main(){<Esc><tab>o<Esc>oreturn 0;<Esc>o}<Esc>kki

nnoremap std i#include<stdio.h><Esc>o<CR>int main(){<Esc>o<Esc>oreturn 0;<Esc>o}<Esc>kki

let g:NERDTreeWinPos = "right"

au BufNewFile,BufRead *.py,*.java,*.cpp,*.c,*.cs,*.rkt,*.h,*.html
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |
    
syntax on
filetype plugin on
set omnifunc=syntaxcomplete#Complete

set clipboard=unnamed " public copy/paste register
set ruler
set showcmd
set noswapfile " doesn't create swap files
set noshowmode
set shortmess+=c
set omnifunc=syntaxcomplete#Complete

set backspace=indent,eol,start " let backspace delete over lines
set autoindent " enable auto indentation of lines
set smartindent " allow vim to best-effort guess the indentation
set showmatch "highlights matching brackets
set incsearch "search as characters are entered
set hlsearch "highlights matching searches

"clears highlights
nnoremap // :noh<return>

"" c++11 support in syntastic
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = ' -std=g++11'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


