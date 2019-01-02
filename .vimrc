execute pathogen#infect()

filetype plugin on
filetype on 
filetype plugin indent on

"""""""""""""""""""""""
" Synaxt Colors
"""""""""""""""""""""" 
set t_Co=256
" Background fix: https://serverfault.com/a/485732
set t_ut=
"colorscheme evening
colo monokai-soda
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

"""""""""""""""""""""""
" YouCompleteMe + UltiSnips
"""""""""""""""""""""""
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

"""""""""""""
" Misc
"""""""""""""
" Search settings
set ic hls is
" Show line number
set number
" reload content
set autoread
" Update time lowered to 100ms in order to make GitGutter show the changes
" faster
set updatetime=100
