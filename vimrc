" Initialize things
set nocompatible
filetype off

" Vundle Init
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" Syntax
syntax on
autocmd FileType ruby         set et sw=2 ts=2 sts=2
autocmd FileType eruby        set et sw=2 ts=2 sts=2
autocmd FileType yaml         set et sw=2 ts=2 sts=2
autocmd Filetype Gemfile      set ft=ruby
autocmd FileType javascript   set et sw=2 ts=2 sts=2
autocmd FileType css          set et sw=2 ts=2 sts=2
autocmd FileType yaml         set et sw=2 ts=2 sts=2
autocmd FileType python       set et sw=4 ts=4 sts=4
autocmd Filetype gitcommit    setlocal spell textwidth=72

" Misc flags
set is
set hls
set ic
set scs
set incsearch
set ai
set copyindent
set smartindent
set encoding=utf-8
set expandtab
set laststatus=1
set nu
set wildmenu
set wildmode=list:longest
set nowrap
set novisualbell
set noerrorbells
set showmatch
set ch=1
set clipboard=unnamed
set showmode

" Zenburn
Bundle 'jnurmine/Zenburn'
let g:zenburn_high_Contrast=1
colorscheme zenburn

" FuzzyFinder
Bundle 'L9'
Bundle 'FuzzyFinder'

" Command-T
Bundle 'git://git.wincent.com/command-t.git'

"Autoident two staps
set shiftwidth=2

" Scratchpad
nmap <leader>s :find ~/.scratchpad<CR>
