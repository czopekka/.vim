set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set backspace=indent,eol,start

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_tex_checkers=[]
let g:syntastic_check_on_wq = 0
"let g:syntastic_quiet_messages = { "type": "style" }
