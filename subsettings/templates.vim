let g:tex_flavor = "latex"

function! FindTemplate()
    echom 'format: ' . &filetype 
    let g:template_path = '~/Templates/'. &filetype . '/' . input('template: ') . '.' . &filetype
    if filereadable(expand(g:template_path))
        exe ":normal :r " . g:template_path . "\<CR>"
    
        echom 'path: "' . g:template_path . '"'
    else
        echom ': ERROR: Template does not exist!'
    endif
endfunction

command! Template :call FindTemplate()<CR>


