"""""""""""""""""""""""
"  .vimrc file        "
"  By: Sean Maguire   "
"                     "
"""""""""""""""""""""""

"""""""""""""""""""""""
" PLUGINS
"""""""""""""""""""""""
set nocompatible
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim	" set the runtime path to include Vundle and initialize
call vundle#begin()
"call vundle#begin('~/some/path/here')	" alternatively, pass a path where Vundle should install plugins

" Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes' 
Plugin 'tpope/vim-fugitive' 
Plugin 'tpope/vim-surround' 
Plugin 'scrooloose/NERDTree' 
" Language specific Plugins
" python

" rust

" linting

call vundle#end()			" all plugins above this line
filetype plugin indent on
"filetype plugin on			" To ignore plugin indent changes, instead use:

" Plugin Config
" ************* 
" autocmd vimenter * NERDTree		" start NERDTree when vim boots (even if no files are specified)
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" map NERDTree to a key binding Ctrl-n
map <C-n> :NERDTreeToggle<CR>
" be able to close vim if only NERDTree is left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'	" change default arrows in NERDTree
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeQuitOnOpen = 1		" let NERDTree close on open


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ruler				" Always show current position
set ignorecase				" Ignore case when searching
set smartcase				" When searching try to be smart about cases 
set hlsearch				" Highlight search results
set incsearch				" Makes search act like search in modern browsers
set lazyredraw				" Don't redraw while executing macros (good performance config)
set magic				" For regular expressions turn magic on
set showmatch				" Show matching brackets when text indicator is over them
set clipboard=unnamed			" Use system keyboard by default on OSX (requires vim 7.4+)
set number				" Show line numbers
set relativenumber			" Show relative line numbers
set backspace=indent,eol,start		" make backspace function properly
set mouse=a 		 		" enable mouse support in vim 
set undodir=~/.vim/.undo//		" move backup, swap, undo files to a standard location in /.vim
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key Bindings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" remap ESC to jk
inoremap jk <Esc>
" set The Leader key
let mapleader="\<Space>"
" Disable the arrow keys in normal and insert mode
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>
" easier vim split moving
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" set spell check to F6
map <F6> :setlocal spell! spelllang=en_us<CR>
" save current buffer
nnoremap <leader>w :w<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffers and Windows
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" create new Buffer (save it with :w ./path/to/FILENAME)
nnoremap <leader>B :enew<cr>
" close current buffer
nnoremap <leader>bq :bp <bar> bd! #<cr>
" close all open buffers
nnoremap <leader>ba :bufdo bd!<cr>
" Tab to switch to next buffer
nnoremap <Tab> :bnext<cr>
" Shift Tab to switch to previous buffer
nnoremap <S-Tab> :bprevious<cr>
" leader key twice to cycle between the last two open buffers
nnoremap <leader><leader> <c-^>
" show list of buffers and quick menu to switch to a new buffer using gb
nnoremap gb :ls<cr>:b 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors, Fonts and Themes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable			" set syntax highlighting
colorscheme desert		" set vim color theme to desert before monokai (for yellow part) // BROKEN RIGHT NOW
colorscheme monokai		" set vim color theme to monokai from https://github.com/sickill/vim-monokai.git


