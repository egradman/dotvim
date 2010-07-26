set nocompatible

highlight Normal guifg=Black guibg=#ffefd5

set visualbell
set noerrorbells
set ruler       " show the cursor position all the time

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set autoindent      " always set autoindenting on
set history=50      " keep 50 lines of command line history
set showcmd         " display incomplete commands
set sw=4
set ts=4
set expandtab
set showmatch
set number
se viewdir=~/.vim/view

map Q gq    " format paragraph

" Make p in Visual mode replace the selected text with the "" register.
vnoremap p <Esc>:let current_reg = @"<CR>gvs<C-R>=current_reg<CR><Esc>

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
endif

if has("autocmd")
  filetype plugin indent on
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
endif " has("autocmd")

"if has("autocmd")
"  autocmd BufEnter * :lcd %:p:h
"endif " has("autocmd")

map gr :set ro!<cr>

" for proper filename tab completion
set wildmode=longest,list

set directory=~/tmp,/var/tmp,/tmp

filetype plugin indent on
