" PLUGINS 
call plug#begin('~/.vim/plugged')

source ~/.vim/plugins/tastymonokai.vim
source ~/.vim/plugins/nerdtree.vim
source ~/.vim/plugins/fzf.vim
source ~/.vim/plugins/commentary.vim
source ~/.vim/plugins/syntastic.vim
source ~/.vim/plugins/coc.vim

call plug#end()

" GENERAL
source ~/.vim/vimrc_utils/general.vim

" Colorscheme
let g:vim_monokai_tasty_italic = 1
colorscheme vim-monokai-tasty
set t_Co=256
hi Normal ctermbg=none
hi Comment ctermfg=8
hi Visual ctermbg=11 ctermfg=black
hi StatusLine cterm=none ctermbg=black ctermfg=green

" MAPPINGS
source ~/.vim/vimrc_utils/mappings.vim

" STATUS LINE
source ~/.vim/vimrc_utils/status_bar.vim

