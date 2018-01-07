"let g:lexical#thesaurus = ['~/.vim/thesaurus/mthesaur.txt',]
"let g:lexical#dictionary = ['/usr/share/dict/words',]
"let g:lexical#spellfile = ['~/.vim/spell/en.utf-8.add',

command! -nargs=0 LexDe call lexical#init({ 
                    \ 'spell': 1, 
                    \ 'spelllang':  ['de'],
                    \ 'thesaurus': ['~/.vim/thesaurus/openthesaurusDE.txt']
                    \ })

command! -nargs=0 LexPl call lexical#init({ 
                    \ 'spell': 1, 
                    \ 'spelllang':  ['pl'],
                    \ 'thesaurus': ['~/.vim/thesaurus/thesaurusPL.txt']
                    \ })

command! -nargs=0 LexEn call lexical#init({ 
                    \ 'spell': 1, 
                    \ 'spelllang':  ['en'],
                    \ 'thesaurus': ['~/.vim/thesaurus/mthesaur.txt']
                    \ })







