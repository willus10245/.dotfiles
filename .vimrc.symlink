let mapleader=","

"""""""" Plugin management stuff """"""""
set nocompatible
filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

Plugin 'VundleVim/Vundle.vim'

" Custom plugins...
" Ctrl-P - Fuzzy file search
Plugin 'kien/ctrlp.vim'
" Remove extraneous whitespace when edit mode is exited
Plugin 'thirtythreefour/lessspace.vim'

" Status bar mods
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'

" Tab completion
Plugin 'ervandew/supertab'

Plugin 'tpope/vim-surround'
" Plugin 'scrooloose/nerdtree'
Plugin 'francoiscabrol/ranger.vim'
Plugin 'elixir-editors/vim-elixir'
Plugin 'slashmili/alchemist.vim'

" After all plugins...
call vundle#end()
filetype plugin indent on

" Some Basics
    set backspace=indent,eol,start
    set number relativenumber
    set autoindent
    set shiftwidth=4
    set expandtab
    set splitbelow
    set splitright
    set formatoptions+=t
    set textwidth=100

" Shortcutting split navigation
    map <c-h> <c-w>h
    map <c-j> <c-w>j
    map <c-k> <c-w>k
    map <c-l> <c-w>l

" Disables automatic commenting on newline:
    autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Nerd tree
"	map <C-n> :NERDTreeToggle<CR>
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Make Ranger default file explorer
let g:ranger_replace_netrw = 1

"""""""" SuperTab configuration """"""""
" let g:SuperTabDefaultCompletionType = "<c-x><c-u>"
function! Completefunc(findstart, base)
  return "\<c-x>\<c-p>"
endfunction

"call SuperTabChain(Completefunc, '<c-n>')

"let g:SuperTabCompletionContexts = ['g:ContextText2']

"""""""" General coding stuff """"""""
" Always show status bar
set laststatus=2
" Let plugins show effects after 500ms, not 4s
set updatetime=500
" Disable mouse click to go to position
set mouse-=a
" Don't let autocomplete affect usual typing habits
set completeopt=menuone,preview,noinsert
" Let vim-gitgutter do its thing on large files
let g:gitgutter_max_signs=10000


autocmd BufNewFile,BufRead *.tex,*.bib noremap <buffer> <C-b> :w<cr>:new<bar>r !make<cr>:setlocal buftype=nofile<cr>:setlocal bufhidden=hide<cr>:setlocal noswapfile<cr>
autocmd BufNewFile,BufRead *.tex,*.bib imap <buffer> <C-b> <Esc><C-b>

" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e
