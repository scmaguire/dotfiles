"""""""""""""""""""""""
"  .vimrc file        "
"  By: Sean Maguire   "
"                     "
"""""""""""""""""""""""

" TODO: total line numbers in the corner

" TODO: navigation commands update

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always show current position
set ruler

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Don't redraw while executing macros (good performance config)
set lazyredraw 

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch


" Show line numbers
set number

" Show relative line numbers
set relativenumber

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key Bindings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set syntax highlighting
syntax enable

" set vim color theme to monokai from https://github.com/sickill/vim-monokai.git
colorscheme monokai
