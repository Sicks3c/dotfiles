" Plugins

call plug#begin('~/.vim/plugged')

Plug 'pangloss/vim-javascript'
Plug 'w0ng/vim-hybrid'

Plug 'mxw/vim-jsx'

Plug 'jparise/vim-graphql'

let g:jsx_ext_required = 0

call plug#end()



" Configurations
filetype indent plugin on
syntax   on
runtime  macros/matchit.vim
runtime  ftplugin/man.vim

set backspace=indent,eol,start         " allow backspacing over everything in insert mode
set shiftwidth=2                       " number of spaces used for indention
let &softtabstop = &shiftwidth         " number of spaces that a <Tab> counts for
set shiftround                         " round indent to multiple of 'shiftwidth'
set expandtab                          " use spaces to insert a <Tab>
set smarttab                           " smart tab handling for indenting
set autoindent                         " set autoindenting on
set selection=exclusive                " defines the behaviour of the selection

set hidden                             " allow buffers to go in background without saving etc.
set autowrite                          " save automatically before critical operations
set autoread                           " automatically reads & loads changes
set nobackup                           " keep a backup file
set noswapfile                         " create a swapfile

"set viminfo='50,\"100,:100,%          " read/write a viminfo file with buffer list
set viminfo='50,\"100,:100             " read/write a viminfo file without buffer list
if has ('nvim')
  set viminfo+=n$HOME/.cache/nvim/viminfo " specify where to write the viminfo
else
  set viminfo+=n$HOME/.cache/vim/viminfo " specify where to write the viminfo
endif
set history=100                        " keep 100 lines of command line history

set number                             " show line numbers
" set cursorcolumn                       " highlights the screen column of the cursor
" set cursorline                         " highlights the screen line of the cursor
let &cc='+'.join(range(1,255),',+')    " highlights textwidth boundaries

" virtually wrap lines to fit on the screen
if exists('+linebreak')
  set linebreak showbreak=\ ›››\       " break & visually mark wrapped lines
endif
if has('patch594')
  set breakindent                      " keep indentation of wrapped lines
endif

set ignorecase                         " ignore case when using a search pattern
set smartcase                          " override 'ignorecase' when pattern has upper case characters
set incsearch                          " show matches while typing the query
set hlsearch                           " highlight search results

set list                               " display unprintable characters
set listchars=tab:→\ ,trail:·,eol:«,extends:◀,precedes:▶

set path+=**                          " list of directories which will be searched with find et al
set isfname=@,48-57,/,.,-,_,+,,,#,$,%,~,=,(,),[,],{,}     " allowed characters in file and path names

set wildmenu                           " use a scrollable menu for filename completions
set wildchar=<tab>                     " the char used for 'expansion' on the command line
set wildmode=list:longest,full         " show list of completions and complete as much as possible, then iterate full completions
set wildignore+=*.swp,*.bak,*.pyc,*.cache,*.dll,*.pdb,*.tar.*
set wildignore+=*/.git/**/*,*/.hg/**/*,*/.svn/**/*

set modeline                           " allow the execution of modelines
set showmode                           " shows mode
set showcmd                            " show uncompleted command
set showmatch                          " show matching hyphens
set diffopt=vertical,iwhite,filler     " split vertical, ignore whitespace & use filler
set splitright                         " set vertical splits to split to the right
set splitbelow                         " set horizontal splits to split to the bottom
set previewheight=24                   " set the height of the preview window
set scrolloff=4                        " minimal number of screen lines to keep above and below the cursor

set gdefault                           " always use global substitutions

set background=dark
let g:hybrid_custom_term_colors = 1
colorscheme hybrid
