" Let's be honest here, who doesn't do this?
let mapleader=","

" Toggle paste mode
set pastetoggle=<F2>

" Might be nice if I could actually remember this mapping
inoremap jj <Esc>

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
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" moves word under the cursor to the left/right (from the vim wiki)
nnoremap <leader><Left>  "_yiw?\w\+\_W\+\%#<CR>:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><C-o><C-l>
nnoremap <leader><Right> "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><C-o>/\w\+\_W\+<CR><C-l>

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Disables the hightlightsearch
nmap <silent> <Leader>/ :nohlsearch<CR>

" Count selection
nmap <silent> <Leader>sc :%s///gn<CR>
vmap <silent> <Leader>sc *<C-O>:%s///gn<CR>`<

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

" Toggles NERDTree
nmap <silent> <Leader>n :NERDTreeToggle<CR>

" Toggles comments
nmap <silent> <Leader>c :TComment<CR>
vmap <silent> <Leader>c :TComment<CR>

" Creates a new tab
nmap <silent> <Leader>tn :tabnew<CR>

" Toggle Tagbar
nmap <silent> <Leader>tl :TagbarToggle<CR>

" Open my vimrc
nmap <silent> <Leader>ev :e $MYVIMRC<CR>

" Remap command window
map q: :q

" Open the help in a new tab
cnoreabbrev <expr> h getcmdtype() == ":" && getcmdline() == 'h' ? 'tab h' : 'h'
cnoreabbrev <expr> help getcmdtype() == ":" && getcmdline() == 'help' ? 'tab help' : 'help'

cmap w!! w !sudo tee %

" Save with Ctrl+S
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

xmap if <Plug>(argtextobjI)
xmap af <Plug>(argtextobjA)
omap if <Plug>(argtextobjI)
omap af <Plug>(argtextobjA)

let g:AutoPairsShortcutBackInsert = '<C-b>'
let g:targets_aiAI = 'a  i'
