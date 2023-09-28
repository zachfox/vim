set nocompatible " be iMproved, required
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" Plugin 'davidhalter/jedi-vim'
Plugin 'godlygeek/tabular'
" Plugin 'plasticboy/vim-markdown'
Plugin 'lervag/vimtex'
Plugin 'JuliaLang/julia-vim'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kh3phr3n/python-syntax'
Plugin 'soywod/kronos.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'junegunn/goyo.vim'
Plugin 'godlygeek/csapprox'
Plugin 'leafgarland/typescript-vim'
Plugin 'tpope/vim-commentary'
Plugin 'pgavlin/pulumi.vim'
Plugin 'sainnhe/sonokai'
Plugin 'mkalinski/vim-MkDiary'
Plugin 'NLKNguyen/papercolor-theme'

" Plugin 'dense-analysis/ale'
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
call vundle#end() " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList - lists configured plugins
" :PluginInstall - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" execute pathogen#infect()
syntax on 
filetype plugin on
" colorscheme pulumi
" colorscheme github

set termguicolors
let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 0

colorscheme sonokai
" set background=light
" colorscheme papercolor
highlight Comment cterm=italic gui=italic

let mapleader = ","
" let g:vim_markdown_folding_disabled=1
" let g:vim_markdown_math=1
" let g:python_highlight_all = 1
let g:python_highlight_space_errors = 0 
let g:python_highlight_indent_errors = 0 

let g:MkDiary_entry_file_extension = 'md'

set shiftwidth=4
set number
set tabstop=4
set expandtab
set ruler
set foldmethod=indent
set breakindent
set noshowmode
set laststatus=2
" keymap for nerdtree
map <C-n> :NERDTreeToggle<CR>

" highlight Search guibg='Purple' guifg='NONE'
let g:pymode_rope = 0
autocmd FileType python setlocal completeopt-=preview
" filetype plugin indent on " required
"
function! s:goyo_enter()
 colorscheme github
 " ...
endfunction
autocmd! User GoyoEnter nested call <SID>goyo_enter()
vmap '' :w !pbcopy<CR><CR>
set backspace=indent,eol,start
