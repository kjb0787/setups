set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'ycm-core/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'Raimondi/delimitMate'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
syntax on                          " Enable syntax highlighting.

set autoindent                     " Indent according to previous line.
set expandtab                      " Use spaces instead of tabs.
set softtabstop =4                 " Tab key indents by 4 spaces.
set shiftwidth  =4                 " >> indents by 4 spaces.
set shiftround                     " >> indents to next multiple of 'shiftwidth'.

set backspace   =indent,eol,start  " Make backspace work as you would expect.
set hidden                         " Switch between buffers without having to save first.
set laststatus  =2                 " Always show statusline.
set display     =lastline          " Show as much as possible of the last line.

set showmode                       " Show current mode in command-line.
set showcmd                        " Show already typed keys when more are expected.

set incsearch                      " Highlight while searching with / or ?.
set hlsearch                       " Keep matches highlighted.

set ttyfast                        " Faster redrawing.
set lazyredraw                     " Only redraw when necessary.

set splitbelow                     " Open new windows below the current window.
set splitright                     " Open new windows right of the current window.

set cursorline                     " Find the current line quickly.
set wrapscan                       " Searches wrap around end-of-file.
set report      =0                 " Always report changed lines.
set synmaxcol   =200               " Only highlight the first 200 columns.
set nu
set list                           " Show non-printable characters.
set spell                          " Spell check

hi clear Spellbad
hi Spellbad cterm=underline

if has('multi_byte') && &encoding ==# 'utf-8'
    let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
    let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif


autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=234
