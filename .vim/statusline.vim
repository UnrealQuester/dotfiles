" Statuslines
" Default:
set laststatus=2
let g:airline_section_z = airline#section#create(['%{g:airline_symbols.linenr}', '%l/%L[%p%%]: %v'])
 let g:airline_section_warning = ''
