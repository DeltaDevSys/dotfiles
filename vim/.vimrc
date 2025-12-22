set number
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
syntax on

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
call plug#end()

" map <C-n> :NERDTreeToggle<CR>
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
