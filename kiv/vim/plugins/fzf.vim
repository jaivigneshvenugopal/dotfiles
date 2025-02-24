Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
nnoremap <C-p> :Files<CR>
let g:fzf_layout = { 'window': { 'width': 1, 'height': 1 } }
let $FZF_DEFAULT_OPTS = '--reverse'
