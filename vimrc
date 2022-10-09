" PLUGINS 
call plug#begin('~/.vim/plugged')

source ~/.vim/plugins/nerdtree.vim
source ~/.vim/plugins/fzf.vim
source ~/.vim/plugins/commentary.vim
source ~/.vim/plugins/syntastic.vim
source ~/.vim/plugins/coc.vim

call plug#end()

" GENERAL
source ~/.vim/vimrc_utils/general.vim

" COLOR
" source ~/.vim/vimrc_utils/set_gruvbox.vim
source ~/.vim/vimrc_utils/set_monokai.vim

" MAPPINGS
source ~/.vim/vimrc_utils/mappings.vim

" STATUS LINE
source ~/.vim/vimrc_utils/status_bar.vim

