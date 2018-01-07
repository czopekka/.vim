" vimrc settings
nmap <F1> :NERDTree ~/.vim/<CR>
nnoremap <F2> :bprevious<CR>
nnoremap <F3> :bnext<CR>
nnoremap <F4> :bd<CR>
command! REF :so $MYVIMRC

" arrow keys
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

"activate mouse
set mouse=a

"NERDTree
nmap <F7> :NERDTreeToggle<CR>

"tagbar
nmap <F8> :TagbarToggle<CR>

" marker
nnoremap <Tab><Tab> /(<!!>)<enter>j
imap <C-o> (<!!>)

" multimarker
nnoremap <Tab><space> :MultipleCursorsFind<Space>(<++>)<Enter>c
imap <C-p> (<++>)

" filler
nnoremap <space><space> /(!!!)<enter>5xzza

