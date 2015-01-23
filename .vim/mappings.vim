" Let's be honest here, who doesn't do this?
let mapleader=","

" Toggle paste mode
set pastetoggle=<F2>

" Might be nice if I could actually remember this mapping
inoremap jj <Esc>

" Jump tot he end of the pasted or yanked text
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" Copy to system clipboard
noremap <Leader>y "+y
vnoremap <Leader>y "+y

" Paste from system clipboard
noremap <Leader>p "+p
vnoremap <Leader>p "+p

" Fast window switching
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map * <Plug>(incsearch-nohl-g*)
map # <Plug>(incsearch-nohl-g#)

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Reselect pasted text
noremap gV `[v`]

" Hit Enter to go to end of file.
nnoremap <CR> G
" Hit Backspace to go to beginning of file.
nnoremap <BS> gg


" Disables the hightlightsearch
nmap <silent> <Leader>/ :nohlsearch<CR>

" Toggles comments
nmap <silent> <Leader>c :TComment<CR>
vmap <silent> <Leader>c :TComment<CR>

" Toggle Tagbar
nmap <silent> <Leader>tl :TagbarToggle<CR>

" Toggle Gundo
nmap <silent> <Leader>tg :GundoToggle<CR>

" Remap command window
map q: :q

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
let g:targets_separators = '. ; : + - = ~ _ * # / | \ & $'

" unite
nnoremap <leader>g :Unite -no-quit -keep-focus -no-start-insert -buffer-name=search grep:.<CR>
nnoremap <C-p> :Unite -buffer-name=files file_rec/async<CR>
nmap <silent> <Leader>tt :Unite -buffer-name=tag tag<CR>
nmap <silent> <Leader>b :Unite -buffer-name=buffer buffer<CR>

nnoremap <silent> cp :set opfunc=ChangePaste<CR>g@
function! ChangePaste(type, ...)
    silent exe "normal! `[v`]\"_c"
    silent exe "normal! p``"
endfunction
