syntax on
set number
set nowrap
set hlsearch
set wildmenu
set mouse=a
set encoding=utf-8
set ttyfast
set autoindent
set shiftwidth=4
set tabstop=4
set showmatch
set guicursor=a:ver7
set virtualedit+=onemore
set clipboard+=unnamedplus
set nohlsearch

tnoremap <Esc> <C-\><C-n>
map <C-ScrollWheelUp> 5z<Left>
map <C-ScrollWheelDown> 5z<Right>
map <silent> <C-n> :NERDTreeToggle<CR>
map <C-b> :ToggleTerminal<CR>

call plug#begin('~/.config/nvim/plugged')
	Plug 'navarasu/onedark.nvim',
	Plug 'scrooloose/nerdtree',
	Plug 'caenrique/nvim-toggle-terminal'
call plug#end()

let g:onedark_config = {
    \ 'style': 'darker',
\}
colorscheme onedark
