" Author
let g:snips_author = "Quester"

" auto pairs
let g:AutoPairsFlyMode = 1

" targets
let g:targets_nlNL = 'nlN '

" Ctrlp
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_extensions = ['line']

" Unite
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#custom#profile('default', 'context', {'start_insert':1})
call unite#custom#profile('files', 'context', {'smartcase':1})
if executable('ag')
    let g:unite_source_grep_command='ag'
    let g:unite_source_grep_default_opts='--nocolor --line-numbers --nogroup -S'
    let g:unite_source_grep_recursive_opt=''
endif

" Syntastic
let g:syntastic_python_checkers=['flake8']

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_key_list_previous_completion = ['<S-Tab>', '⇦', '<Up>']
let g:ycm_confirm_extra_conf = 0

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

" easytags
let g:easytags_updatetime_warn = 0
let g:easytags_include_members = 1
let g:easytags_dynamic_files = 2

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
