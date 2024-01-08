set nocompatible              " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
filetype plugin indent on     " required

call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
"Plugin 'nvie/vim-flake8'
"Plugin 'vim-syntastic/syntastic'
"Plugin 'vim-python/python-syntax'
Plugin 'morhetz/gruvbox'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'preservim/nerdtree'
"Plugin 'lervag/vimtex'
Plugin 'Valloric/YouCompleteMe'
Plugin 'jiangmiao/auto-pairs'
"Plugin 'fannheyward/coc-pyright'
" Plugin 'dense-analysis/ale'
"Plugin 'integralist/vim-mypy'
"Plugin 'neoclide/coc.nvim', {'branch': 'release'}
" Plugin 'jupyter-vim/jupyter-vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required

" line numbers
set number
" system clipboard copy
set clipboard=unnamedplus

" Theme
" set termguicolors
syntax on
set background=dark
color gruvbox
set cursorline
set t_Co=256

" Allow backspace to override INSERT mode
set backspace=indent,eol,start


" Spliting
set splitbelow
set splitright

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" NerdTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

imap jj <ESC>

au BufNewFile,BufRead *.yaml
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

" Latex specification
au BufNewFile,BufRead *.tex
    \ set nocursorline |
    \ set nornu |
    \ set number |
    \ let g:loaded_matchparen=1 |
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

au BufNewFile,BufRead *.bib
    \ set noautoindent |
    \ set nosmartindent |
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
au BufNewFile,BufRead *.cpp
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
au BufNewFile,BufRead *.h
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
au BufNewFile,BufRead *.c
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |

set encoding=utf-8

" let g:tex_fast = "bMpr"
" let g:tex_conceal = ""
" let g:tex_fold_enabled=0
" let g:vimtex_fold_manual=1
let g:ycm_auto_trigger=1
let g:ycm_confirm_extra_conf=0

" Ycm
nnoremap <C-g>  :YcmCompleter GoToReferences<CR>


" For local replace
" nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>
"
" " For global replace
nnoremap gr *:%s/<C-R>///gc<left><left><left>
"
" When you want to use, type:
" gr
" over the variable you want to replace
" then type
" ngR
" OR
" ngr

" vimtex
" let g:vimtex_view_general_viewer = 'okular'
" if !exists('g:ycm_semantic_triggers')
" let g:ycm_semantic_triggers = {}
" endif
" au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme
" let g:ycm_clangd_binary_path = "/usr/bin/clang++-16"

"let g:syntastic_python_checkers=['flake8']
"let g:syntastic_python_flake8_args='--ignore=E501,E225'
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
