"TODO
filetype plugin on
autocmd FileType tex inoremap ;be \begin{DELRN}<Enter>(!!!)<Enter>\end{DELRN}<Enter>(!!!)<Esc>3k0fR:MultipleCursorsFind<Space>DELRN<Enter>c
autocmd FileType tex inoremap ;sec \section*{}<Enter>(!!!)<Esc>kf}i
autocmd FileType tex inoremap ;ssec \subsection*{}<Enter>(!!!)<Esc>kf}i
autocmd FileType tex inoremap ;sssec \subsubsection*{}<Enter>(!!!)<Esc>kf}i

autocmd FileType tex inoremap ;un \underline{}(!!!)<Esc>5hi
autocmd FileType tex inoremap ;ov \overline{}(!!!)<Esc>5hi
autocmd FileType tex inoremap ;it \textit{}(!!!)<Esc>5hi
autocmd FileType tex inoremap ;bf \textbf{}(!!!)<Esc>5hi
autocmd FileType tex inoremap ;te \text{}(!!!)<Esc>5hi

"compile
autocmd FileType tex nmap <F9> :!pdflatex % <CR>
autocmd FileType tex nmap <F12> :call EvinceTex() <CR>

autocmd FileType tex inoremap ;ta <Esc>:call TexTable()<CR>

function! EvinceTex()
    let g:tex2pdf = expand('%:t:r')
    let g:tex2pdf = g:tex2pdf . '.pdf'
    exe "silent !evince " . g:tex2pdf . " &"
    
endfunction


function! TexTable()
    let g:tex_c_column = 0
    let g:textableinput = input('Columns: ')
    "let g:textablesplit = split ("HELLO","\zs")
    "exe ":normal i" . "\\table{" . g:textablesplit[3] . "}"
    let g:tex_m_columns = strlen(substitute(g:textableinput, "[^l]", "","g"))
    let g:tex_m_columns += strlen(substitute(g:textableinput, "[^r]", "","g"))
    let g:tex_m_columns += strlen(substitute(g:textableinput, "[^c]", "","g"))

    exe ":normal i" . "\\begin{tabular}{" . g:textableinput . "}" . "\<CR>"
    exe ":normal i" . "\\end{tabular}\<CR>"
    exe ":normal 2ko"

    let g:textableloop = 'true'
    while (g:textableloop == 'true')
        let g:tex_c_column = 0
        exe ":normal i\<Tab>" . "[+]"
        let g:tex_c_column = g:tex_c_column + 1
        while (g:tex_c_column < g:tex_m_columns)
            exe ":normal A\<Tab>\<Tab>" . "&" . "\<Tab>" . "(+)"
            let g:tex_c_column = g:tex_c_column + 1
        endwhile

        exe ":normal 0"
        let g:tex_c_column = 0
        while (g:tex_c_column < g:tex_m_columns)
            exe ":normal /[+]\<CR>h"
            let g:textableinput = input(g:tex_c_column+1 . ': ')
            exe ":normal 3xi" . g:textableinput
            if (g:tex_c_column + 1 < g:tex_m_columns)
                exe ":normal /(+)3xi[+]<Esc>4h"
            endif
            let g:tex_c_column = g:tex_c_column + 1
        endwhile
        exe ":normal A\\\\"

        let g:textableinput = input('(e|l) ')
        if (g:textableinput == 'e')
            let g:textableloop = 'false'
        elseif (g:textableinput == 'l')
            exe ":normal o\\hline\<CR>"
        else
            exe ":normal o"
        endif
    endwhile
    exe ":normal 2ji"
endfunction





