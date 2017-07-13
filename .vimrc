au VimEnter * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

set nocompatible					"removes compatibility to vi
filetype off						"removes filetype extention


"***************************************************************
"						Plugins - Vundle
"***************************************************************

set rtp+=~/.vim/bundle/Vundle.vim   	"path to Vundle
call vundle#begin()                 	"start Vundle

Plugin 'VundleVim/Vundle.vim'       	"add plugins like this
"Plugin 'tpope/vim-fugitive'         	"install plugins by PluginInstall
Plugin 'scrooloose/nerdtree'
Plugin 'mbbill/undotree' 		"undo manager
Plugin 'vim-airline/vim-airline'    	"adds beautifull bar below
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'    	"500+ colorschemes
Plugin 'easymotion/vim-easymotion'
Plugin 'vimwiki/vimwiki'
Plugin 'suan/vim-instant-markdown'

call vundle#end()                   	"end Vundle


"***************************************************************
"						Settings
"***************************************************************

filetype plugin indent on				"15
syntax on

autocmd BufNewFile,BufReadPost *.md set filetype=markdown "Set .md as a markdown file format

set autoread 						"Set to auto read when a file is changed from the outside
set so=2 						"2 lines when moving vertically using j/k
set foldcolumn=1 					"Add a bit extra margin to the left

set backspace=indent,eol,start				"5

set shiftround 						"5a it is used along with shiftwidth
set smarttab

""""""""""""""""set number	16

set hlsearch						"19
set incsearch
set ignorecase
set smartcase

if has("persistent_undo")
	set undodir=~/.vim/tmp/undo// 			"20 backup/persistance settings
	set undofile
endif
set backupdir=~/.vim/tmp/backup//
set directory=~/.vim/tmp/swap//
set backupskip=/tmp/*,/private/tmp/*"
set backup
set writebackup
set swapfile
set history=500
set undolevels=700
set undoreload=700	"*********************************

set laststatus=2					"21

set dict=/usr/share/dict/words				"23

"""""""set cursorline					"24
"""""""set cursorcolumn

set showcmd 						"25

set ruler						"26

set wildmenu						"27

set cmdheight=2 					"28

set nowrap 						"29
if &diff
	set wrap
endif

set mouse=a 						"4
set ttym=xterm2

set completeopt=menuone,preview 			"40

set pastetoggle=<F2> 					"2


""""""""""airline""""""""""
if !exists("g:airline_symbols")
  let g:airline_symbols = {}
endif
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts=1
let g:airline#extensions#whitespace#enabled    =  0
let g:airline#extensions#tabline#enabled       =  1
let g:airline#extensions#tabline#tab_nr_type   =  1 	"tab number


""""""""""NERDTree""""""""""
nnoremap <c-o> :NERDTreeToggle<CR> 			"Toggle nerdtree with F10
nnoremap <F10> :NERDTreeFind<CR>			"Current file in nerdtree


""""""""""Undotree""""""""""
nnoremap <F9> :UndotreeToggle<CR>


"""""""""Spelling Check""""
nnoremap <F8> :set spell!<CR>


""""""""Markdown"""""""""""
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}


"""""""Open Markdown""""""
let g:instant_markdown_autostart = 0	" disable autostart
map <leader>md :InstantMarkdownPreview<CR>

"***************************************************************
"						Mappings
"***************************************************************

no <down> <Nop> 
no <left> <Nop>
no <right> <Nop>
no <up> <Nop> 

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

"let mapleader = ","
"let g:mapleader = ","

""""""""nmap di, f,dT,
""""""""nmap <C-Tab> :tabnext<CR>
""""""""imap <C-Tab> <ESC>:tabnext<CR>
""""""""imap <leader>' ''<ESC>i
""""""""nmap gO O<ESCnerdtree>
""""""""iabbr email 25prabhu10@gmail.com
""""""""se nonu nolist foldcolumn=0
