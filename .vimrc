syntax on                             " syntax highlight
set hlsearch                          " search highlighting
set incsearch                         " incremental search
syntax enable
set t_Co=256
" 設定佈景主題
colorscheme gruvbox

" 設定色調
set background=dark    " 暗色系
" set background=light   " 亮色系
" set nu
set splitbelow
set splitright
set cursorline     "整行光標顯示
set expandtab     "tab to space
set tabstop=1     "tab for 4em
"set softtabstop=4    "虛擬tab
set shiftwidth=4    "自動補齊的tab長度
" file encoding
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1,euc-jp,utf-16le,latin1
set fenc=utf-8 enc=utf-8 tenc=utf-8
scriptencoding utf-8
set runtimepath^=~/.vim/bundle/ctrlp.vim

highlight EndOfBuffer ctermfg=0
"------------------Hot_Key--------------------
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
map <F2> :NERDTreeMirror<CR>
map <F2> :NERDTreeToggle<CR>
" Python
if executable("python")
  autocmd BufRead,BufNewFile *.py map <F5> :w !python3 %<CR>
else
  autocmd BufRead,BufNewFile *.py map <F5> :echo "you need to install Python first!"<CR>
endif


"--------------Vim-multople-cursors-----------
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
"-----------------Airline---------------------
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_nr_show=1
let g:airline#extensions#tabline#buffer_nr_format='%s: '
let g:airline_theme='gruvbox'
"let g:airline_theme='pencil'
"-----------------emmet_html套件-------------
"Enable just for html/css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall    "only for html


"----------------Nerdcommenter---------------
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
" let mapleader = ","


"-------------------Vundle---------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'

Plugin 'preservim/nerdtree'     "樹狀目錄
Plugin 'vim-airline/vim-airline'     "標題美化
Plugin 'vim-airline/vim-airline-themes'     "標題樣式
Plugin 'terryma/vim-multiple-cursors'     "多重輸入
Plugin 'morhetz/gruvbox'     "顏色主題
Plugin 'ycm-core/YouCompleteMe'     "自動補齊套件
Plugin 'reedes/vim-colors-pencil'     "主題
Plugin 'Raimondi/delimitMate'     "符號補齊
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-surround'     "viw + S, ds, cs更改包圍的符號
Plugin 'preservim/nerdcommenter'    "多行註解
"----------------HTML套件-----------------
Plugin 'mattn/emmet-vim'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required




























