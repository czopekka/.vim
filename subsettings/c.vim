autocmd FileType c nmap <F9> :!clear<CR>:!gcc -o c_vim -O3 -std=c11 -Wall -Werror -lGL -lGLU -lglut  % <CR>
autocmd FileType c nmap <F12> :silent !clear<CR>:!./c_vim <CR>

autocmd FileType c imap while while(){<CR>(!!!)<CR>}(!!!)<Esc>2ka

autocmd FileType c imap { {<CR>}<Esc>kA
