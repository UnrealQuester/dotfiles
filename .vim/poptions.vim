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

" Taglist
let Tlist_Show_Menu = 1
let Tlist_Process_File_Always = 1
" let Tlist_Use_Right_Window = 1
let Tlist_Display_Tag_Scope = 0
let Tlist_Enable_Fold_Column = 0
let Tlist_Inc_Winwidth = 0
hi def link MyTagListFileName STRING

" Syntastic
" let g:syntastic_python_checkers=['pylint', 'flake8']
let g:syntastic_python_checkers=['flake8']

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion = 1

" Ultisnips
let g:UltiSnipsExpandTrigger = "<c-j>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
let g:UltiSnipsUsePythonVersion = 2
