" Author
let g:snips_author = "Quester"

" haskell-vim
let g:haskell_indent_if = 0

" latex
let g:tex_conceal = ""

" auto pairs
" let g:AutoPairsFlyMode = 1

" targets
let g:targets_nlNL = '    '
let g:targets_aiAI = 'a  i'

let g:tcommentMapLeaderOp1 = '<Leader>c'

" Unite
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_selecta'])
call unite#custom#profile('default', 'context', {'start_insert':1})
call unite#custom#profile('files', 'context', {'smartcase':1})
call unite#custom#profile('search', 'context', {
            \    'start_insert':0,
            \})
if executable('ag')
    let g:unite_source_grep_command='ag'
    let g:unite_source_grep_default_opts='--hidden --nocolor --line-numbers --nogroup -S'
    let g:unite_source_grep_recursive_opt=''
    let g:unite_source_rec_async_command= ['ag', '--follow', '--nocolor', '--nogroup', '--hidden', '-g', '']
    call unite#custom#source('grep', 'max_candidates', 1000)
endif
let g:unite_source_tag_max_fname_length = 70
let g:unite_source_tag_max_name_length = 70

" Syntastic
let g:syntastic_python_checkers=['flake8']
let g:syntastic_haskell_checkers=['ghc_mod', 'hlint']

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_key_list_previous_completion = ['<S-Tab>']
let g:ycm_confirm_extra_conf = 0
let g:ycm_max_diagnostics_to_display = 400

" Ultisnips
let g:UltiSnipsExpandTrigger = "<c-j>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
let g:UltiSnipsUsePythonVersion = 2

" Incsearch
let g:incsearch#auto_nohlsearch = 1

" tcomment
call tcomment#DefineType('cabal', '-- %s')

" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tmuxline#enabled = 0
let g:airline_section_error = ''

" easytags
let g:easytags_updatetime_warn = 0
let g:easytags_dynamic_files = 1
:autocmd FileType cpp,c let b:easytags_auto_highlight = 0

let g:easytags_languages = {
    \ 'javascript' : {
        \ 'cmd' : 'jsctags'
    \ }
\ }

let g:hardtime_default_on = 1

" promptline
" let g:promptline_preset = {
"         \'a': [ promptline#slices#user(), promptline#slices#host() ],
"         \'b' : [ '%~' ],
"         \'c' : [ '%#' ],
"         \'y' : [ promptline#slices#vcs_branch({ 'svn' : 1 }) ],
"         \'warn' : [ promptline#slices#last_exit_code() ]}

" tmuxline
" let g:tmuxline_preset = {
"       \'a'    : '#S',
"       \'win'  : ['#I', '#W'],
"       \'cwin' : ['#I', '#W'],
"       \'y'    : ['%a', '%d.%m.%Y', '%R'],
"       \'z'    : '#H'}
