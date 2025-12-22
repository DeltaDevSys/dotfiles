set number
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

set encoding=UTF-8
set laststatus=2

set termguicolors
set background=dark

if $COLORTERM == 'truecolor' || $COLORTERM == '24bit'
    set termguicolors
endif

set noshowmode
set nocompatible

syntax enable

if has('syntax')
  syntax enable
endif

" plugins
call plug#begin('~/.vim/plugged')
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'catppuccin/vim', {'as': 'catppuccin' }
    Plug 'sheerun/vim-polyglot'
call plug#end()

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme = 'catppuccin_mocha'

" mappings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
