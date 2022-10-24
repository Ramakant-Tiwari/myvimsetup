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
