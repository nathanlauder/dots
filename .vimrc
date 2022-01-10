set nocompatible              " be iMproved, required
" set the runtime path to include VimPlug and initialize
set rtp+=~/.vim/autoload/plug.vim

call plug#begin()
" File Nav
Plug 'git://git.wincent.com/command-t.git'

" themes
"Plug 'wadackel/vim-dogrun'
Plug 'bluz71/vim-nightfly-guicolors' "modified with /colors/irridescent.vim
"Plug 'dracula/vim', { 'as': 'dracula' }
"Plug 'ghifarit53/tokyonight-vim'

"other plugins
Plug 'pangloss/vim-javascript'
Plug 'adelarsq/vim-matchit'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'

" Linter
Plug 'dense-analysis/ale'

" Snippets
Plug 'sirver/ultisnips'

" Status Bar and Git
" Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call plug#end()

syntax on
filetype plugin indent on    " required
set splitright " split windows to the right by default
let mapleader = ','

if (has("termguicolors"))
	set termguicolors
endif

" colorscheme nightfly
source ~/.vim/colors/irridescent.vim 
highlight Comment cterm=italic
set t_ZH=[3m
set t_ZR=[23m
set background=dark
" Line numbers and indentation
set number
set relativenumber
set binary
set nofixendofline
set noeol
set smartindent
set smarttab
set autoindent
set tabstop=2
set shiftwidth=2
set showmatch
set expandtab
set hlsearch
set lazyredraw " performance boost
set ignorecase

" UltiSnips
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips']
let g:UltipSnipsExandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<C-tab>"
let g:UltiSnipsEditSplit="vertical"

" airline settings
let g:airline_theme='monochrome'
let g:airline_solarized_bg='dark'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif	
let g:airline_symbols.branch = ''
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.dirty=' ✏️ '
let g:airline#extensions#ale#enabled = 1

let g:airline#extensions#default#section_truncate_width = {
    \ 'b': 79,
    \ 'x': 90,
    \ 'y': 88,
    \ 'z': 45,
    \ 'warning': 80,
    \ 'error': 80,
    \ }

let g:airline#extensions#default#layout = [
      \ [ 'a', 'b', 'c' ],
      \ [ 'error', 'warning', 'x', 'y', 'z' ]
      \ ]

" ale setting
let g:ale_linters = {
      \ 'javascript': ['eslint'],
      \}

let g:ale_fixers = {
			\   'javascript': [
			\		'remove_trailing_lines',
			\		'trim_whitespace',
			\       'eslint',
			\   ]
  \}

let g:ale_fix_on_save = 1

" Emmet 
let g:user_emmet_leader_key = '<leader>t'

" NERDTree settings
nnoremap <C-t> :NERDTreeToggle<CR>

" NerdCommenter Settings
let g:NERDSpaceDelims = 1
