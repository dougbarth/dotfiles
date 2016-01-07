set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rails'

Plugin 'int3/vim-extradite'

Plugin 'altercation/vim-colors-solarized'

Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set expandtab
set shiftwidth=2
set tabstop=2
set autoindent
set number                  " Enable line numbers
syntax on

filetype plugin indent on

set modeline            " Enable modeline.
set modelines=5         " Look for modeline comments in the first 5 lines of the file.
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
set ruler               " Show the line and column numbers of the cursor.

set laststatus=2        " Always show status line.
set wildmode=longest,longest,list    " Perform bash style command completion
set bufhidden=delete

" Show tabs and EOL
set list
set listchars=tab:▸\ ,eol:¬
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

autocmd BufReadPost Capfile set syntax=ruby
autocmd BufReadPost Gemfile set syntax=ruby

autocmd BufRead *\.{txt,textile} setlocal formatoptions=l
autocmd BufRead *\.{txt,textile} setlocal lbr
autocmd BufRead *\.{txt,textile} map  j gj
autocmd BufRead *\.{txt,textile} map  k gk
autocmd BufRead *\.{txt,textile} setlocal smartindent
"autocmd BufRead *\.{txt,textile} setlocal spell spelllang=en_us
autocmd BufRead *\.{txt,textile} setlocal nonumber

au BufRead,BufNewFile *.less setfiletype less

au FileType crontab set nobackup nowritebackup

if has('gui')
  colorscheme solarized
  set background=dark
else
  colorscheme solarized
end

if exists('+colorcolumn')
  set colorcolumn=120
  " Less intense color column
  hi ColorColumn guibg=#2d2d2d

  autocmd BufRead *\.{txt,textile} setlocal colorcolumn=0
endif
