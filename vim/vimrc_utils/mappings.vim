" MAPPINGS

" To map leader key
let mapleader = " "

" quick exit without saving
map <C-w> :q<CR>

" esc remap
inoremap jj <esc>

" to move between vim tabs
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>

" to add empty line in normal mode
map <leader>o o<ESC>
map <leader>O O<ESC>

" indent lines
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Clear highlighting after seraching
nnoremap <leader>h :noh<CR>

" Allow gf to open non-existent files
map gf :tabnew <cfile><cr>

" open current file in default program
nmap <leader>x :!xdg-open %<cr><cr>

