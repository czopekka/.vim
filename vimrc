
"##################################################### VUNDLE ########################
:scriptencoding utf-8
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initializei
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/.vimplugins/')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.

"Autocompletion
Plugin 'https://github.com/Shougo/neocomplcache.vim.git'
" Nerdtree
Plugin 'https://github.com/scrooloose/nerdtree.git'
"Nerdcommenter comments
Plugin 'https://github.com/scrooloose/nerdcommenter.git'
" Fuzzy searching
Plugin 'https://github.com/kien/ctrlp.vim.git'
"Syntax
Plugin 'https://github.com/vim-syntastic/syntastic.git'
" File construction
Plugin 'https://github.com/majutsushi/tagbar.git'
" Latex Box
Plugin 'https://github.com/LaTeX-Box-Team/LaTeX-Box.git'
" Automatic vim plugin
"Plugin 'https://github.com/coot/atp_vim.git'
" Auto Format Programming
Plugin 'https://github.com/Chiel92/vim-autoformat.git'
"vim-airline status bar
Plugin 'https://github.com/vim-airline/vim-airline.git'
Plugin 'https://github.com/vim-airline/vim-airline-themes.git'
"Solarized
Plugin 'git://github.com/altercation/vim-colors-solarized.git'
"badwolf
Plugin 'https://github.com/sjl/badwolf.git'
"vim-colors-pencil
Plugin 'https://github.com/reedes/vim-colors-pencil.git'
"vim-system-copy
Plugin 'https://github.com/christoomey/vim-system-copy.git'
" multiple cursors
Plugin 'https://github.com/terryma/vim-multiple-cursors.git'
" Taglist
Plugin 'https://github.com/vim-scripts/taglist.vim.git'
" Goyo
Plugin 'https://github.com/junegunn/goyo.vim.git'
" vim-lexical
Plugin 'https://github.com/reedes/vim-lexical.git'
" vim-pencil
Plugin 'https://github.com/reedes/vim-pencil.git'
"vim-glsl
Plugin 'https://github.com/tikhomirov/vim-glsl.git'
"w3m
Plugin 'https://github.com/yuratomo/w3m.vim.git'
"Markdown
Plugin 'https://github.com/tpope/vim-markdown.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

"######################################### END OF VUNDLE ###########################################


" neocomplcache auto complete autocomplete
let g:neocomplcache_enable_at_startup = 1

"no auto comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"tab size
:set tabstop=4
:set shiftwidth=4
:set expandtab



"stuff for ATP
filetype plugin on
filetype indent on





" syntastic
source ~/.vim/subsettings/syntastic.vim

" lexical
source ~/.vim/subsettings/lexical.vim

" style theme colorsheme number relativenumber nornu <F5> <F6>
source ~/.vim/subsettings/theme.vim

" custom key bindings
source ~/.vim/subsettings/customkey.vim

" templates 
source ~/.vim/subsettings/templates.vim

" rgb
source ~/.vim/subsettings/rgb.vim

" latex key bindings
source ~/.vim/subsettings/latex.vim

" c key bindings
source ~/.vim/subsettings/c.vim

" cpp key bindings
source ~/.vim/subsettings/cpp.vim

" cpp key bindings
source ~/.vim/subsettings/sonicpi.vim














"gvim
"font
set guifont=Monospace\ 16
if has('gui_running')
    call SwitchTheme2()
endif

