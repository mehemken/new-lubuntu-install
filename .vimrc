" This is Marco Hemken's .vimrc

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer'

" other plugins:

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


set laststatus=2
set statusline=
set t_Co=256
set nu
set rnu
set hlsearch

augroup myvimrchooks
	au!
	autocmd bufwritepost .vimrc source ~/.vimrc
augroup END

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set rnu |

au BufNewFile,BufRead *.md
    \ set autoindent |
    \ set rnu |
    \ set expandtab |
    \ set shiftwidth=4 |
    \ set softtabstop=4 |
    \ set colorcolumn=80 |
    \ hi ColorColumn ctermbg=lightgrey guibg=lightgrey |

au BufNewFile,BufRead *.html
    \ set shiftwidth=4 |
    \ set rnu |

au BufNewFile,BufRead *.rs
    \ set autoindent |
    \ set shiftwidth=4 |
    \ set rnu |

"au BufNewFile,BufRead *.yml 
autocmd FileType yaml 
    \ set autoindent |
    \ set rnu |
    \ setlocal ts=2 sts=2 sw=2 expandtab

"define BadWhitespace before using in a match
highlight BadWhitespace ctermbg=red guibg=darkred

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

set splitbelow
set splitright

nnoremap ; :
nnoremap : ;
inoremap <Tab> <Esc>`^

" Nice wrapping
set wrap
set linebreak
set nolist " list diables linebreak
