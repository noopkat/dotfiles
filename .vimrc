"============================================================
" noopkat settings
"============================================================
syntax on
color dracula
set smartindent
set clipboard=unnamed " use os clipboard
set tabstop=2 " number of visual spaces per tab
set softtabstop=2 " number of spaces in tab when editing
set expandtab "tab to spaces
set number " show line numbers
set cursorline  " highlight current line
set showmatch " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set noswapfile  
let g:ctrlp_working_path_mode = 'r'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*
let g:ctrlp_show_hidden=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " autoquit if only nerdtree is open

"============================================================
" Mappings
"============================================================
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
map <C-Left> <Esc>:bprev<CR>
map <C-Right> <Esc>:bnext<CR>
map <C-b> :NERDTreeToggle<CR>

execute pathogen#infect()
call pathogen#helptags()
