set nocompatible
filetype off
" new keybindings
source ~/.vim/mappings.vim
" plugins
source ~/.vim/bundles.vim
" Usefull stuff
" The usual filetype plugins
filetype indent plugin on
" Syntax highlighting
syntax on

" Ignore the case when the search only lowercase letters
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

" grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" Allows to backspace over indents, end/start of the line
set backspace=indent,eol,start whichwrap+=<,>,[,]

" List mode
set list
set listchars=tab:>-,trail:-

" Allow adding and subtracting to letters
" set nrformats+=alpha

" Show the command line
set showcmd

" Search settings
set incsearch
set hlsearch
" set nohlsearch

" No backups before writing a file
set nobackup

" Show relative line numbers
set relativenumber

" Automatically apply substitution to the whole line
" set gdefault

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
" Set working directory

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
" let g:solarized_italic=0
" set background=dark
colorscheme solarized

" Font and encoding
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
set guifontwide=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
let g:airline_powerline_fonts = 1
set encoding=utf-8

" Language
" language english
set spelllang=

"Disable the annoying bell
set vb t_vb=

" diffopt
set diffopt+=iwhite

if !has("gui_running")
    set t_kB=⇦
    set mouse=a
endif

" Statusline
source ~/.vim/statusline.vim

" Plugin related stuff
source ~/.vim/poptions.vim


" autocommands
if has("autocmd")
    augroup vimrc
        autocmd!
        autocmd BufReadPost *
                    \ if line("'\"") > 1 && line("'\"") <= line("$") |
                    \   exe "normal! g`\"" |
                    \ endif

        autocmd Filetype cpp set syntax=cpp.doxygen
    augroup END
endif


" Diff
if !exists(":DiffOrig")
    command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
                \ | wincmd p | diffthis
endif
