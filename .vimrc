" load vundle
set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Plugin 'gmarik/Vundle.vim'
" My Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-fugitive'
Plugin 'pangloss/vim-javascript'
Plugin 'StanAngeloff/php.vim'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on

syntax on
colorscheme molokai
" Access colors present in 256 colorspace
let base16colorspace=256
" Explicitly tell vim that the terminal supports 256 colors
set t_Co=256

" faster redrawing
set ttyfast

" show spaces and tabs
set list
set listchars=tab:>-,trail:-

" tab setting
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4
set smarttab

" show the cursor position all the time
set ruler
set cursorline
hi CursorLine term=bold cterm=bold ctermbg=234

" show current mode
set showmode

" indent
set autoindent
set smartindent

set wrap
set history=50
set number
set mouse=r
set backspace=2

" search highlight and enhance
set hlsearch
set incsearch
highlight Search ctermfg=black ctermbg=blue
highlight Folded ctermbg=018

" show unfinished cmd
set showcmd

" always show information, for vim-powerline working
set laststatus=2

" autocomplete
set omnifunc=syntaxcomplete#Complete
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
set completeopt=longest,menuone
highlight Pmenu ctermfg=232 ctermbg=10
highlight PmenuSel ctermfg=4 ctermbg=0

" supertab
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

" vim-airline
let g:airline_powerline_fonts=1
let g:airline_theme='tomorrow'

" NERDTree
map <Leader>t :NERDTreeToggle<CR>
let NERDTreeHightlightCursorline=1
" show hidden files in NERDTree
let NERDTreeShowHidden=1

" CtrlP
let g:ctrlp_dotfiles=1

" tagbar
map <leader>l :TagbarToggle<CR>
let g:tagbar_usearrows=1
let g:tagbar_autofocus=1

" encoding
set encoding=utf-8

" press enter to tabedit file in ctrlp
let g:ctrlp_prompt_mappings = {
\ 'AcceptSelection("e")': [],
\ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
\ }

" High light unwanted spaces in end of line
highlight ExtraWhitespace ctermbg=darkred guibg=darkcyan
autocmd BufEnter * if &ft != 'help' | match ExtraWhitespace /\s\+$/ | endif
autocmd BufEnter * if &ft == 'help' | match none /\s\+$/ | endif

let g:syntastic_mode_map = { 'mode': 'passive' }
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['standard']
let g:syntastic_javascript_standard_exec = 'semistandard'
let g:syntastic_javascript_standard_generic = 1
let g:syntastic_always_populate_loc_list = 1

" YouCompleteMe
" For performance
let g:ycm_filetype_blacklist = {
\ 'tagbar':1,
\ 'qf':1,
\ 'notes':1,
\ 'markdown':1,
\ 'unite':1,
\ 'text':1,
\ 'vimwiki':1,
\ 'gitcommit':1,
\ }
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
