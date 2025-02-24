" Statusbar

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
