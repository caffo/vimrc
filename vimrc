" Initialize things
set nocompatible
filetype off

" Vundle Init
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

"Tabstop
set tabstop=2
set shiftwidth=2
set expandtab

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

" Change leader
let mapleader=","

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
set laststatus=2
set statusline=%f "tail of the filename
set nu
set wildmenu
set wildmode=list:longest
set nowrap
set novisualbell
set noerrorbells
set showmatch
set ch=1
set showmode
set clipboard=unnamed

" Zenburn
Bundle 'jnurmine/Zenburn'
let g:zenburn_high_Contrast=1
colorscheme zenburn

"Autoident two staps
set shiftwidth=2

" Scratchpad
nmap <leader>s :find ~/.scratchpad<CR>

" Markdown
Bundle 'plasticboy/vim-markdown'

" Easyclip
Bundle 'svermeulen/vim-easyclip'

" ctrlp
Bundle 'https://github.com/kien/ctrlp.vim' 

" Tabular (for alignment)
Bundle 'godlygeek/tabular'
nmap <leader>a :Tabularize /

" AutoComplPop for autocompletion
"Bundle 'vim-scripts/AutoComplPop'
Bundle 'ajh17/VimCompletesMe'

" Ruby magick
Bundle 'vim-ruby/vim-ruby'

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

" Multiple Cursors
Bundle 'terryma/vim-multiple-cursors'
let g:multi_cursor_exit_from_visual_mode=0
let g:multi_cursor_exit_from_insert_mode=0

" Backups
set backup
set backupdir=~/.backup/vim
set directory=~/.swap/vim

" No cursor/arrow keys for you!
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" Surround
Bundle 'tpope/vim-surround'

" Ag (for search)
Bundle 'rking/ag.vim'

" Endwise
Bundle 'tpope/vim-endwise'

" Ragtag
Bundle 'tpope/vim-ragtag'

" Nerdcommenter
Bundle 'scrooloose/nerdcommenter'
filetype plugin on

" Save on focus lost
au FocusLost * :wa

" Easymotion
Bundle 'Lokaltog/vim-easymotion'

"Emmet
Bundle 'mattn/emmet-vim'

"Syntastic
Bundle 'scrooloose/Syntastic'
let g:syntastic_ruby_checkers = ['mri', 'rubocop']

"Die whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

"" Quickly switch to the last file
nnoremap <leader><space> <c-^>
