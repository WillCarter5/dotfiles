syntax enable
set mouse=a
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap

augroup WrapLinesInMarkdown
    autocmd!
    autocmd FileType markdown setlocal wrap
augroup END

set number
set noswapfile
set smartcase
set incsearch
set backspace=indent,eol,start
set fillchars+=vert:│

"fix delay when escaping insert
augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
augroup END

"Put plugins here
call plug#begin()
Plug 'JuliaEditorSupport/julia-vim'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'psliwka/vim-smoothie'
Plug 'JuliaEditorSupport/julia-vim'
call plug#end()

