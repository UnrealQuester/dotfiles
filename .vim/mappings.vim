" Let's be honest here, who doesn't do this?
let mapleader=","

" Toggle paste mode
set pastetoggle=<F2>

" Might be nice if I could actually remember this mapping
inoremap jj <Esc>
"
" Makes replacing/searching things easier
nnoremap * *<c-o>

" Copy to system clipboard
noremap <Leader>y "+y
vnoremap <Leader>y "+y

" Paste from system clipboard
noremap <Leader>p "+p
vnoremap <Leader>p "+p

" Automatically choose the highest recommended spelling correction
map zp 1z=

" Fast window switching
nnoremap <left> <C-W>h
nnoremap <right> <C-W>l
nnoremap <up> <C-W>k
nnoremap <down> <C-W>j

" moves word under the cursor to the left/right (from the vim wiki)
nnoremap <leader><Left>  "_yiw?\w\+\_W\+\%#<CR>:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><C-o><C-l>
nnoremap <leader><Right> "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><C-o>/\w\+\_W\+<CR><C-l>


" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Saves some time and is less annoying
noremap <space> o<Esc>
noremap <s-space> O<Esc>

" Disables the hightlightsearch
nmap <silent> <Leader>/ :nohlsearch<CR>
"
" Toggles NERDTree
nmap <silent> <Leader>n :NERDTreeToggle<CR>
"
" Toggles comments
nmap <silent> <Leader>c :TComment<CR>
vmap <silent> <Leader>c :TComment<CR>
"
" Creates a new tab
nmap <silent> <Leader>tn :tabnew<CR>

" Toggle TagList
nmap <silent> <Leader>tl :TlistToggle<CR>

" Open my vimrc
nmap <silent> <Leader>ev :e $MYVIMRC<CR>
"
" As advised
nmap <Leader>x <Plug>ToggleAutoCloseMappings
"
" Open the help in a new tab
cnoreabbrev <expr> h getcmdtype() == ":" && getcmdline() == 'h' ? 'tab h' : 'h'
cnoreabbrev <expr> help getcmdtype() == ":" && getcmdline() == 'help' ? 'tab help' : 'help'

" Save with Ctrl+S
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>
