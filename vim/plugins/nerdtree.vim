Plug 'preservim/nerdtree'
nnoremap <C-n> :NERDTreeToggle<CR>
" Close automatically
let NERDTreeQuitOnOpen = 1

"Start NERDTREE when vim is started without file arguments
autocmd StdinReadPre * let s:std_in=10
autocmd VimEnter * if argc() == 0 && !exises('s:std_in') | NERDTree | only | endif

let NERDTreeMinimalUI = 1
let NEDTreeDirArrows = 1

let g:NERDTreeWinSize=60
