execute pathogen#infect()
syntax on
filetype plugin indent on

set mouse=a
" jump between windows
noremap <C-H> <C-W>j<C-W>_
noremap <C-T> <C-W>k<C-W>_
noremap <C-D> <C-W>h
noremap <C-N> <C-W>l
set winminheight=0

" pythone-mode
let g:pymode_options = 1
let g:pymode_pythone = 'python3'
let g:pymode_virtualenv = 1
let g:pymode_rope = 0
let g:pymode_lint = 0

" vim-javascript
let g:javascript_plugin_jsdoc = 1

" NERDTree Config
" Automatically open NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" Close vim if NERDTree last buffer open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


