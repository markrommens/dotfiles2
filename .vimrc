" Load custom settings
source ~/.vim/startup/mappings.vim

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

execute pathogen#infect()
syntax on
filetype plugin indent on
set t_Co=256
"colorscheme nord
colorscheme solarized8_flat
"colorscheme gruvbox
"colorscheme xoria256
set background=dark
highlight Normal ctermfg=grey ctermbg=black
set textwidth=80
set colorcolumn=+1
set clipboard=unnamedplus

set nu
set rnu
set laststatus=2
set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %F
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 

"Set default search highlighting ON
:set hlsearch
:set incsearch

"Set default search highlighting OFF
":set noincsearch
":set nohsearch

"####################################################################
"# The line below will update:
"# The tab character to               → unicode u2192
"# The end of line character to       ↲ unicode u21b2
"####################################################################
set listchars=tab:→\ ,eol:↲

" Tabulation settings 
set tabstop=4 
set softtabstop=4 
set shiftwidth=4 
set noexpandtab
"set foldmethod=syntax
set autoindent

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
