" PLUGINS ----------------------------------------------------------------
call plug#begin('~/.vim/plugged')

source ~/.vim/plugins/tastymonokai.vim
source ~/.vim/plugins/nerdtree.vim
source ~/.vim/plugins/fzf.vim
source ~/.vim/plugins/commentary.vim
source ~/.vim/plugins/syntastic.vim
source ~/.vim/plugins/coc.vim

call plug#end()

" GENERAL  ---------------------------------------------------------------- 
" Turn on syntax highlighting.
syntax on

" Vim is based on Vi. Setting `nocompatible` switches from the default
" Vi-compatibility mode and enables useful Vim functionality. This
" configuration option turns out not to be necessary for the file named
" '~/.vimrc', because Vim automatically enters nocompatible mode if that file
" is present. But we're including it here just in case this config file is
" loaded some other way (e.g. saved as `foo`, and then Vim started with
" `vim -u foo`).
set nocompatible

" Disable the default Vim startup message.
set shortmess+=I

" Show line numbers.
set number

" This enables relative line numbering mode. With both number and
" relativenumber enabled, the current line shows the true line number, while
" all other lines (above and below) are numbered relative to the current line.
" This is useful because you can tell, at a glance, what count is needed to
" jump up or down to a particular line, by {count}k to go up or {count}j to go
" down.
set relativenumber

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
" shown in any window) that has unsaved changes. This is to prevent you from "
" forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find
" hidden buffers helpful enough to disable this protection. See `:help hidden`
" for more information on this.
set hidden

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Enable mouse support. You should avoid relying on this too much, but it can
" sometimes be convenient.
set mouse+=a

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number
highlight LineNr ctermbg=none

" Show current line number on the left
set nu

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" show trailing spaces
set list
set listchars=tab:→\ ,nbsp:␣,trail:.

" Cusorline configs
set cursorline
" hi CursorLine ctermbg=8 "8 = dark gray
hi CursorLineNr guifg=#af00af
set cursorline
set cursorlineopt=number

" Open vim in insert mode for new Files
autocmd VimEnter * if wordcount()['chars'] == 0 | startinsert | endif

" Colorscheme configs
let g:vim_monokai_tasty_italic = 1
colorscheme vim-monokai-tasty
set t_Co=256
hi Normal ctermbg=none
hi Comment ctermfg=8
hi Visual ctermbg=11 ctermfg=black
hi StatusLine cterm=none ctermbg=black ctermfg=green

" MAPPINGS ---------------------------------------------------------------
" Mappings code goes here.
" quick exit without saving
map <C-w> :q<CR>

" esc remap
inoremap jj <esc>
vnoremap \\ <esc>

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

" Allow gf to open non-existent files
map gf :tabnew <cfile><cr>

" open current file in default program
nmap <leader>x :!xdg-open %<cr><cr>

" STATUS LINE ------------------------------------------------------------
set laststatus=2

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0 ? l:branchname : 'none'
endfunction

let g:currentmode={
	\ 'n'  : 'NORMAL',
	\ 'v'  : 'VISUAL',
	\ 'V'  : 'V·LINE',
	\ '␖' : 'V·BLOCK',
	\ 's'  : 'SELECT',
	\ 'S'  : 'S·LINE',
	\ '␓' : 'S·BLOCK',
	\ 'i'  : 'INSERT',
	\ 'R'  : 'REPLACE',
    \ 'Rv' : 'V·REPLACE',
	\ 'c'  : 'COMMAND',
	\}

set statusline=
set statusline+=%{g:currentmode[mode()]} 
set statusline+=\ [git:%{StatuslineGit()}]
set statusline+=\ %f
set statusline+=%m
set statusline+=%=
set statusline+=\ %l:%c
set statusline+=\ %p%%
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
