autocmd FileType ruby nmap <F9> :!sonic_pi < % <CR>
autocmd FileType ruby nmap <F12> :!sonic_pi stop <CR>

command! SonicPlay :!sonic_pi < %
command! SonicStop :!sonic_pi stop


