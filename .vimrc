if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif


" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'bling/vim-bufferline'
NeoBundle 'bling/vim-airline'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'ervandew/supertab'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'mhinz/vim-signify'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'bill-bradley/vim-coldfusion'
NeoBundle 'vim-ruby/vim-ruby'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

let mapleader=","
set backspace=indent,eol,start
set hidden
set wildmenu
set showcmd
set incsearch
set ignorecase
set smartcase
set autoindent
set nostartofline
set confirm
set visualbell
set mouse=a
set cmdheight=2
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>
set shiftwidth=2
set noexpandtab
set tabstop=2
set scrolloff=5
set showmatch
set smartindent
set smarttab

" visual settings
colorscheme jellybeans
syntax on
set hlsearch
set number
set relativenumber
set t_Co=256

" airline settings
let g:airline_section_c = ''
let g:airline_theme             = 'powerlineish'
let g:airline_enable_branch     = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#buffer_nr_show = 1

set guifont=Source\ Code\ Pro\ for\ Powerline:h12
set guioptions+=c
set laststatus=2

let g:airline_powerline_fonts 	= 1
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" signify settings
let g:signify_vcs_list = [ 'git' ]

" bufferline settings
let g:bufferline_echo = 0

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsEditSplit="vertical"

" To open a new empty buffer
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
nmap <leader>bq :bp <BAR> bd #<CR>

"delmitmate settings
au FileType cf let b:delimitMate_quotes = "\" # '"

"cf settings
"au FileType cf setfiletype html.cf.js.css

"let g:syntastic_debug = 31

" CtrlP settings
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']
let g:ctrlp_open_multiple_files = 'i'
