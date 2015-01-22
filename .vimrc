set nocompatible
filetype off
" new keybindings
source ~/.vim/mappings.vim
" plugins
source ~/.vim/bundles.vim
" The usual filetype plugins
filetype indent plugin on
" Syntax highlighting
syntax on

" Ignore the case when the search contains only lowercase letters
set ignorecase
set smartcase

" So I can actually see where I am going
set scrolloff=5
set sidescrolloff=5

" Usefull for stacking windows and only showing the statusline
set winminheight=0

" Better completion options
set wildmenu
set wildmode=longest,full
set completeopt=longest,menuone,preview
" Indentation settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set shiftround
set smarttab

" Allows to backspace over indents, end/start of the line
set backspace=indent,eol,start whichwrap+=<,>,[,]

" List mode
set list
set listchars=tab:>-,trail:-

" Show the command line
set showcmd

" Search settings
set incsearch
set hlsearch

" Show relative line numbers
set relativenumber
" Also show current line number
set number

" Path settings
" Swap
set directory=/tmp
" Backup
set backupdir=~/.vim/backup
set backup
" Undo
set undodir=~/.vim/undo
set undofile
set undolevels=1000
" Tags
set tags=./tags;

" Reload files when changed on disk but not in vim
set autoread

" Allow for hidden buffers
set hidden

" Folds are evil
set nofoldenable

" More history
set history=1000

" Allow the cursor to be everywhere in all modes
set virtualedit=all

" Always show tabs
set showtabline=2

" Colorscheme
set background=dark
colorscheme solarized

" Font and encoding
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set guifontwide=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
let g:airline_powerline_fonts = 1
set encoding=utf-8

" Language
set spelllang=

"Disable the annoying bell
set vb t_vb=

" diffopt ignore whitespace
set diffopt+=iwhite

if !has("gui_running")
    set mouse=a
    set ttymouse=sgr
endif

" Statusline
source ~/.vim/statusline.vim

" Plugin related stuff
source ~/.vim/poptions.vim

if executable('ag')
    " Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif

" autocommands
if has("autocmd")
    augroup vimrc
        autocmd!
        autocmd BufReadPost *
                    \ if line("'\"") > 1 && line("'\"") <= line("$") |
                    \   exe "normal! g`\"" |
                    \ endif

        autocmd Filetype cpp set syntax=cpp.doxygen
        autocmd Filetype ruby,puppet setlocal ts=2 sts=2 sw=2
    augroup END
endif


" Diff
if !exists(":DiffOrig")
    command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
                \ | wincmd p | diffthis
endif
