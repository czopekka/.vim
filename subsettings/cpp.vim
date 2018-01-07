autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl

autocmd FileType cpp nmap <F9> :!clear<CR>:!gcc -o c_vim -O3 -std=c11 -Wall -Werror -lGL -lGLU -lglut  % <CR>
autocmd FileType cpp nmap <F12> :silent !clear<CR>:!./c_vim <CR>

autocmd FileType cpp imap while while(){<CR>(!!!)<CR>}(!!!)<Esc>2ka

