" Let's be honest here, who doesn't do this?
let mapleader=" "

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
if has('nvim')
    tnoremap <C-J> <C-\><C-n>:TmuxNavigateDown
    tnoremap <C-K> <C-\><C-n>:TmuxNavigateUp
    tnoremap <C-L> <C-\><C-n>:TmuxNavigateRight
    tnoremap <C-H> <C-\><C-n>:TmuxNavigateLeft
endif

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map * <Plug>(incsearch-nohl-*)
map # <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

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

let g:AutoPairsShortcutBackInsert = '<C-b>'
let g:targets_separators = '. ; : + - = ~ _ * # / | \ & $'

" unite
nnoremap <Leader>g :Unite -no-quit -keep-focus -no-start-insert -buffer-name=search grep:.<CR>
nnoremap <Leader>f :Unite -buffer-name=files file_rec/async<CR>
nnoremap <silent> <Leader>tt :Unite -buffer-name=tag tag<CR>
nnoremap <silent> <Leader>b :Unite -buffer-name=buffer buffer<CR>

nnoremap <silent> <Leader>gc :Gcommit -v<CR>
nnoremap <silent> <Leader>gs :Unite giti/status<CR>
nnoremap <silent> <Leader>gd :Gdiff<CR>

nnoremap <silent> cp :set opfunc=ChangePaste<CR>g@
function! ChangePaste(type, ...)
    silent exe "normal! `[v`]\"_c"
    silent exe "normal! p``"
endfunction

nnoremap <silent> <Leader>e :call RangerChooser()<CR>
function! RangerChooser()
    let temp = tempname()
    exec 'silent !ranger --choosefiles=' . shellescape(temp)
    if !filereadable(temp)
        redraw!
        " Nothing to read.
        return
    endif
    let names = readfile(temp)
    if empty(names)
        redraw!
        " Nothing to open.
        return
    endif
    " Edit the first item.
    exec 'edit ' . fnameescape(names[0])
    " Add any remaning items to the arg list/buffer list.
    for name in names[1:]
        exec 'argadd ' . fnameescape(name)
    endfor
    redraw!
endfunction
