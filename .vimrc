"============================================================
" Plugins
"============================================================
" List of plugins that I use:
" + ctrlp
" + vim-airline
" + dracula colour theme
" + nerdtree
" + vim-bufferline
" + pathogen
" + typescript-vim
" + vim-jsx-improve
"
" I'm definitely trying to stay minimal and seeing how it goes <3

set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/vim-airline/plugin/airline.vim
set laststatus=2 " for airline

"============================================================
" noopkat settings
"============================================================
syntax on
color dracula
set smartindent
set clipboard=unnamed " use os clipboard
set shiftwidth=2 " number of spaces when shift indenting
set tabstop=2 " number of visual spaces per tab
set softtabstop=2 " number of spaces in tab when editing
set expandtab " tab to spaces
set number " show line numbers
set cursorline  " highlight current line
set showmatch " highlight matching [{()}]
set incsearch " search as characters are entered
set hlsearch " highlight matches
let g:ctrlp_working_path_mode = 'r' " I copy and paste from other software a lot
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/* " lol
let g:ctrlp_show_hidden=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " autoquit if only nerdtree is open
set noswapfile
let g:jsx_ext_required=0

"============================================================
" Mappings
"============================================================
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
map <C-Left> <Esc>:bprev<CR>
map <C-Right> <Esc>:bnext<CR>
map <C-b> :NERDTreeToggle<CR>

"============================================================
" Start pathogen
"============================================================
execute pathogen#infect()
call pathogen#helptags()
