let mapleader=" "

" Toggle paste mode
set pastetoggle=<F2>

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
            \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
            \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

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

" YCM FixIt
nnoremap <Leader>uf :YcmCompleter FixIt<CR>

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

nmap ]s <Plug>(altr-forward)
nmap [s <Plug>(altr-back)

nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Reselect pasted text
noremap gV `[v`]

" Hit Enter to go to end of file.
nnoremap <CR> G
" Hit Backspace to go to beginning of file.
nnoremap <BS> gg

" surround alias
nmap <Leader>s ys

" Disables the hightlightsearch
nmap <silent> <Leader>/ :nohlsearch<CR>

" Toggle Tagbar
nmap <silent> <Leader>tl :TagbarToggle<CR>

" Toggle Gundo
nmap <silent> <Leader>tg :GundoToggle<CR>

cmap w!! w !sudo tee > /dev/null %

" Save with Ctrl+S
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

let g:AutoPairsShortcutBackInsert = '<C-b>'
let g:targets_separators = '. ; : + - = ~ _ * # / | \ & $'

" unite
nnoremap <silent> <Leader>ag :Unite -buffer-name=search grep:.<CR>
nnoremap <silent> <Leader>aw :Unite -buffer-name=search grep:.:-w:<C-R><C-W><CR>
nnoremap <silent> <Leader>ar :UniteResume search<CR>
nnoremap <silent> <Leader>f :Unite -buffer-name=files file_rec/async<CR>
nnoremap <silent> <Leader>tt :Unite -buffer-name=tag tag<CR>
nnoremap <silent> <Leader>b :Unite -buffer-name=buffer buffer<CR>

nnoremap <silent> <Leader>gs :Unite giti/status -no-start-insert<CR>

autocmd FileType unite call s:unite_settings()

autocmd FileType c noremap <buffer> <Leader>u :call Uncrustify('c')<CR>
autocmd FileType c vnoremap <buffer> <Leader>u :call RangeUncrustify('c')<CR>
autocmd FileType cpp noremap <buffer> <Leader>u :call Uncrustify('cpp')<CR>
autocmd FileType cpp vnoremap <buffer> <Leader>u :call RangeUncrustify('cpp')<CR>

autocmd FileType c noremap <buffer> <C-]> :YcmCompleter GoTo<CR>
autocmd FileType cpp noremap <buffer> <C-]> :YcmCompleter GoTo<CR>

function! s:unite_settings()
  " Enable navigation with Tab and Shift-Tab in insert mode
  imap <buffer> <Tab>   <Plug>(unite_select_next_line)
  imap <buffer> <S-tab> <Plug>(unite_select_previous_line)
  for source in unite#get_current_unite().sources
      if source.name == 'giti/status'
          nnoremap <silent><buffer><expr>ga unite#do_action('stage')
          nnoremap <silent><buffer><expr>gp unite#do_action('add_patch')
          nnoremap <silent><buffer><expr>gc unite#do_action('checkout')
          nnoremap <silent><buffer><expr>gd unite#do_action('diff')
          nnoremap <silent><buffer><expr>gu unite#do_action('unstage')
          nnoremap <silent><buffer><expr>gr unite#do_action('reset')
      endif
  endfor
endfunction

nnoremap <silent> <Leader>gd :Gdiff<CR>
nnoremap <silent> <Leader>gc :Gcommit -v<CR>
nnoremap <silent> <Leader>ga :Gcommit -v --amend<CR>
nnoremap <silent> <Leader>gb :Gblame -w<CR>

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
