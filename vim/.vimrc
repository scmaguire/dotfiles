"""""""""""""""""""""""
"  .vimrc file        "
"  By: Sean Maguire   "
"                     "
"""""""""""""""""""""""

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

" Use system keyboard by default on OSX (requires vim 7.4+)
set clipboard=unnamed

" Show line numbers
set number

" Show relative line numbers
set relativenumber

" make backspace function properly
set backspace=indent,eol,start

" move backup, swap, undo files to a standard location in /.vim
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key Bindings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" remap ESC to jk
inoremap jk <Esc>
" Disable the arrow keys in vim as God intended
" normal mode
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
" insert mode
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

" set The Leader key
let mapleader="\<Space>"
" save current buffer
nnoremap <leader>w :w<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffers and Windows Stuff
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
" Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set syntax highlighting
syntax enable

" set vim color theme to desert before monokai (for yellow part) // BROKEN RIGHT NOW
colorscheme desert
" set vim color theme to monokai from https://github.com/sickill/vim-monokai.git
colorscheme monokai


"""""""""""""""""""""""
" VUNDLE STUFF
"""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes' 
Plugin 'tpope/vim-fugitive' 
Plugin 'tpope/vim-surround' 
Plugin 'scrooloose/NERDTree' 

" Plugin configs

" start NERDTree when vim boots (even if no files are specified)
" autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" map NERDTree to a key binding Ctrl-n
map <C-n> :NERDTreeToggle<CR>
" be able to close vim if only NERDTree is left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" change default arros in NERDTree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" let NERDTree close on open
let NERDTreeQuitOnOpen = 1

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

