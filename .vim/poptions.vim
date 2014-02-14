" NERDTree
let NERDTreeDirArrows = 1

" Autocomplpop
" let g:acp_behaviorKeywordLength = 4
" let g:acp_completeOption = '.,w,b,k,kspell'
" let g:acp_completeoptPreview = 1

" SuperTab
" let g:SuperTabLongestEnhanced = 1
" let g:SuperTabLongestHighlight = 1

" Author
let g:ass_author = "Quester"
let g:snips_author = "Quester"

" Ctrlp
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_extensions = ['line']

" Syntastic
" let g:syntastic_python_checkers=['pylint', 'flake8']
let g:syntastic_python_checkers=['flake8']

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_collect_identifiers_from_tags_files = 1

" Ultisnips
let g:UltiSnipsExpandTrigger = "<c-j>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
let g:UltiSnipsUsePythonVersion = 2

" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tmuxline#enabled = 0

" promptline
let g:promptline_preset = {
        \'a': [ promptline#slices#user(), promptline#slices#host() ],
        \'b' : [ '%~' ],
        \'c' : [ '%#' ],
        \'y' : [ promptline#slices#vcs_branch({ 'svn' : 1 }) ],
        \'warn' : [ promptline#slices#last_exit_code() ]}

" tmuxline
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W'],
      \'y'    : ['%a', '%d.%m.%Y', '%R'],
      \'z'    : '#H'}
