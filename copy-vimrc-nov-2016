" This is Marco Hemken's .vimrc

set nocompatible              " be iMproved, required
filetype off                  " required



" Nice wrapping
set wrap
set linebreak
set nolist " list diables linebreak
set laststatus=2
set t_Co=256
set nu
set rnu
set hlsearch
set autoindent
set rnu
set expandtab
set shiftwidth=2
set softtabstop=2
set colorcolumn=80
hi ColorColumn ctermbg=lightgrey guibg=lightgrey

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

