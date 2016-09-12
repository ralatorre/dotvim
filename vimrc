execute pathogen#infect()
syntax on
filetype plugin indent on

set mouse=a

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


