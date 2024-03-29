" ~/.vimrc


" PLUGINS
set nocompatible
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" list all Plugins for Vundle here between begin and end
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes' 
Plugin 'tpope/vim-surround' 
call vundle#end()
filetype plugin indent on
" Plugin Specific Configurations


" SETTINGS
set ruler				                        " Always show current position
set ignorecase				                    " Ignore case when searching
set smartcase				                    " When searching try to be smart about cases 
set hlsearch				                    " Highlight search results
set incsearch				                    " Makes search act like search in modern browsers
set lazyredraw				                    " Don't redraw while executing macros (good performance config)
set magic				                        " For regular expressions turn magic on
set showmatch				                    " Show matching brackets when text indicator is over them
set clipboard=unnamed			                " Use system keyboard by default on OSX (requires vim 7.4+)
set number				                        " Show line numbers
set relativenumber			                    " Show relative line numbers
set backspace=indent,eol,start		            " make backspace function properly
set mouse=a 		 		                    " enable mouse support
set undodir=~/.vim/.undo//		                " move backup, swap, undo files to a standard location in /.vim
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//


" KEY BINDINGS
inoremap jk <Esc>                               " remap ESC to another key pattern
let mapleader="\<Space>"                        " set The Leader key
nnoremap <C-J> <C-W><C-J>                       " easier vim split moving
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <leader>w :w<cr>                       " save current buffer
nnoremap <leader>B :enew<cr>                    " create new Buffer (save it with :w ./path/to/FILENAME)
nnoremap <leader>bq :bp <bar> bd! #<cr>         " close current buffer
nnoremap <leader>ba :bufdo bd!<cr>              " close all open buffers
nnoremap <Tab> :bnext<cr>                       " Tab to switch to next buffer
nnoremap <S-Tab> :bprevious<cr>                 " Shift Tab to switch to previous buffer
nnoremap <leader><leader> <c-^>                 " leader key twice to cycle between the last two open buffers
nnoremap gb :ls<cr>:b                           " show list of buffers and quick menu to switch to a new buffer using gb


" COLORS, FONTS and THEMES
syntax enable			                        " set syntax highlighting
"colorscheme gruvbox 	                        " set color theme https://github.com/morhetz/gruvbox.git
