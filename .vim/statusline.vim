" Statuslines
" Default:
set laststatus=2
set stl=
set stl+=%1*%t%m%r\ 
set stl+=%5*%=
set stl+=%3*\ Line:%l/%L[%p%%]\ 
set stl+=%4*\ Col:%v\ 
set stl+=%5*\ Buf:#%n\
set stl+=%1*\ [%b][0x%B]

let g:stlaPos = 0

hi User1 guifg=#112605 guibg=#aefe7B
hi User2 guifg=#391100 guibg=#d3905c
hi User3 guifg=#292b00 guibg=#f4f597
hi User4 guifg=#051d00 guibg=#7dcc7d
hi User5 guifg=#002600 guibg=#67ab6e
hi User6 guifg=#002600 guibg=#b88a00
