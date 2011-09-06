" Syntax highlighting
syntax on

" Allows one to switch buffers even if the buffer one is switching from has
" local changes
set hidden

" We're using vim, not vi
set nocompatible

" Carry indent over to next line on <CR>
set autoindent

" Restore cursor position
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

" Persist undo history
set undofile

" Keep undo history in one location
set undodir=~/.vim/undo

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/

" Number of spaces that <Tab> counts for
set tabstop=4

" Number of spaces for each step of >> and <<
set shiftwidth=4

" Minimal number of lines to keep before and after cursor vertically
set scrolloff=3

" Minimal number of lines to keep before and after cursor horizontally
set sidescrolloff=5

" We're using a fast terminal
set ttyfast

" Annoying
set noerrorbells

" Tab completion menu
set wildmenu
set wildmode=longest:full

" Search as one types
set incsearch

" Highlight the match
set hlsearch

" Ignore case when searching
set ignorecase

" Use spaces instead of \t characters
set expandtab

" Show line numbers
set number

" Width of text to use when wrapping
set textwidth=79

" Formatting options
" In this particular case:
" c auto-wraps comments according to textwidth
" q allows formatting of text with <g><q>
" r automatically inserts the current comment leader after <CR>
" t auto-wraps text according to textwidth
set formatoptions=c,q,r,t

" Display the line and column number in the status bar
set ruler

" Enable mouse usage
set mouse=a

" Keep swap files contained in one directory
set directory=~/.vim/swap

" Enable backups
set backup

" Map <Space> to ;
nore <Space> :

" Keep backup files contained in one directory
set backupdir=~/.vim/backup

" Enable filetype-specific plugins
filetype plugin on

" Enable filetype-specific indenting rules
filetype indent on

" Useful maps for buffer switching
map <C-k> :bnext<CR>
map <C-j> :bprev<CR>

" Enable pathogen
call pathogen#infect()
