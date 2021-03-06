" Manage all of my plugins
call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'chase/vim-ansible-yaml'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Cofyc/vim-uncrustify'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'elzr/vim-json'
Plug 'haya14busa/incsearch.vim'
Plug 'honza/vim-snippets'
Plug 'jeaye/color_coded', { 'do': 'cmake . && make && make install', 'for': ['c', 'cpp'] }
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'kana/vim-altr'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-user'
Plug 'kmnk/vim-unite-giti'
Plug 'leafgarland/typescript-vim'
Plug 'majutsushi/tagbar'
Plug 'neovimhaskell/haskell-vim'
Plug 'PeterRincker/vim-argumentative'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimproc', { 'do': 'make' }
Plug 'SirVer/ultisnips'
Plug 'sjl/gundo.vim'
Plug 'tmhedberg/matchit'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
Plug 'xolox/vim-shell'
Plug 'xolox/vim-misc'
Plug 'Yggdroot/indentLine'
call plug#end()
