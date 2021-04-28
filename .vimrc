"execute pathogen#infect()

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

" Save working directory Tree on exit
" autocmd VimLeavePre * let current_dir=getcwd()
" autocmd VimLeavePre * execute ':NERDTreeProjectSave' . current_dir
" autocmd VimEnter * :NERDTreeProjectLoadFromCWD

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
" Show line number and relative numbers
set number rnu
" reload content
set autoread
" Update time lowered to 100ms in order to make GitGutter show the changes
" faster
set updatetime=100

" Number of spaces when auto indenting:
set shiftwidth=2

" replace the last search pattern with input text
nnoremap <c-h> :%s///gc<left><left><left>
" Make the visually selected text a search
vnoremap // y/<C-R>"<CR>

" Allow yanking multiple times
" (https://stackoverflow.com/questions/7163947/paste-multiple-times)
xnoremap p pgvy


" see https://vi.stackexchange.com/questions/2350/how-to-map-alt-key
execute "set <A-j>=\ej"
execute "set <A-h>=\eh"
execute "set <A-k>=\ek"
execute "set <A-l>=\el"
"nnoremap <M-j> j
map <silent> <A-l> <C-w><
map <silent> <A-j> <C-W>-
map <silent> <A-k> <C-W>+
map <silent> <A-h> <C-w>>

"""""""""""""""""""""""""""""
" Whitespace highlighting
"""""""""""""""""""""""""""""
highlight ExtraWhitespace ctermbg=red guibg=red
" Show trailing whitespace:
" match ExtraWhitespace /\s\+$/
" Show trailing whitespace and spaces before a tab:
" match ExtraWhitespace /\s\+$\| \+\ze\t/
" Show tabs that are not at the start of a line:
"match ExtraWhitespace /[^\t]\zs\t\+/
" Show spaces used for indenting (so you use only tabs for indenting).
" match ExtraWhitespace /^\t*\zs \+/
" Switch off :match highlighting.
" match

autocmd BufWinEnter * match ExtraWhitespace /\s\+$\| \+\ze\t/
autocmd InsertLeave * redraw!

"" COC autocompletion trigger
"" (https://stackoverflow.com/questions/23189568/control-space-vim-key-binding-in-normal-mode-does-not-work)
"inoremap <silent><expr> <NUL> coc#refresh()
