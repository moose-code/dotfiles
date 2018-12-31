execute pathogen#infect()

filetype plugin on
filetype on 
filetype plugin indent on

"""""""""""""""""""""""
" Synaxt Colors
"""""""""""""""""""""" 

colorscheme evening
syntax on

"""""""""""""
" NERDTree
"""""""""""""
"Start NerdTree if directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" Close if only Nerdtree is open:
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Show hidden files
let NERDTreeShowHidden=1
" Use Ctrl+n to toggle nerdtree:
map <C-n> :NERDTreeToggle<CR>

" Custom maps
let mapleader = ","
nmap <leader>ne :NERDTree<cr>


"""""""""""""
" Misc
"""""""""""""
" Search settings
set ic hls is
" Show line number
set number
" reload content
set autoread 
