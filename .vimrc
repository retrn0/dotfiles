" Add plugins to &runtimepath
call plug#begin('~/.vim/plugged')

"Install fizzy file plugin
Plug 'kien/ctrlp.vim'

"status line
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"nagivation between split files
Plug 'christoomey/vim-tmux-navigator'

"coffee syntax plugin
Plug 'kchmck/vim-coffee-script'

"javascript plugin
Plug 'pangloss/vim-javascript'

"indentaton
Plug 'nathanaelkane/vim-indent-guides'

"colroscheme
Plug 'flazz/vim-colorschemes'

"ag.vim
Plug 'rking/ag.vim'

Plug 'grep.vim'

"better line numbering
Plug 'myusuf3/numbers.vim'

call plug#end()

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
 if executable('ag')
   " Use Ag over Grep
     set grepprg=ag\ --nogroup\ --nocolor
       " Use ag in CtrlP for listing files. Lightning fast and respects
"       .gitignore
         let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " ag is fast enough that CtrlP doesn't need to cache
     let g:ctrlp_use_caching = 0
     endif



colorscheme badwolf
syntax enable           " enable syntax processing


"UI config
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          "highlight current line
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]

"fix indentation and tabs
set tabstop=8     " tabs are at proper location
set expandtab     " don't use actual tab character (ctrl-v)
set shiftwidth=4  " indenting is 4 spaces
set autoindent    " turns it on
set smartindent   " does the right thing (mostly) in programs

"Searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" Press Space to turn off highlighting
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Movement
" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $
"
 " $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" highlight last inserted text
nnoremap gV `[v`]

let mapleader=","       " leader is comma

" open ag.vim
nnoremap <leader>a :Ag


set ignorecase
set smartcase
set laststatus=2
