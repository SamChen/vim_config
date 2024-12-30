" =============== Required and Initial Settings ===============
" Use Vim settings rather than Vi settings. Must be first, it affects other options
set nocompatible

" Map the leader key. Must happen before Plug so all the settings can be set accordingly.
" let mapleader = " "
let mapleader = ","


" =============== Plug Initialization ===============
" This loads all the plugins specified in ~/.dotfiles/vim/plugs.vim
" Use Plug to manage all other plugins
if filereadable(expand("~/.vim/plugs.vim"))
  " Enable completion where available.
  " This setting must be set before ALE is loaded.
  " You should not turn this setting on if you wish to use ALE as a completion
  " source for other completion plugins, like Deoplete.
  let g:ale_completion_enabled = 1
  source ~/.vim/plugs.vim
endif

" ================ General ==========================

set history=1000                    " Store :cmdline history.
set showcmd                         " Show incomplete commands at the bottom
set showmode                        " Show current mode at the bottom
set ruler                           " Always show the current position
set backspace=indent,eol,start      " Allow backspace to delete everything
set autoread                        " Auto reload file when it's changed in the background
set showmatch                       " Show matching brackets and parentheses
syntax enable                       " Syntax highlighting
set encoding=utf-8                  " Force UTF-8 as standard encoding
set ffs=unix,dos,mac                " Unix as the standard file type
set laststatus=2                    " Always show the statusline
set number                          " Show line numbers
set guioptions-=r
set confirm                         " Need confrimation while exit
set ruler                           " show the cursor position all the time


set cindent     "设置C样式的缩进格式
" set tabstop=4   "设置table长度
" set shiftwidth=4        "同上
map q: :q
map :Q :q
map :W :w
" set list listchars+=tab:>-,trail:•,extends:#,nbsp:- " make whitespace visible
" Key timeouts
set timeoutlen=250 ttimeoutlen=0

" set tab as tabnext to swith among tabs
nnoremap <tab> :tabnext<CR>

" The current buffer can be put to the background without writing to disk;
" When a background buffer becomes current again, marks and undo-history are remembered.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" =================================================================

augroup vimrcEx
  autocmd!

  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  " Cucumber navigation commands
  autocmd User Rails Rnavcommand step features/step_definitions -glob=**/* -suffix=_steps.rb
  autocmd User Rails Rnavcommand config config -glob=**/* -suffix=.rb -default=routes

  " Set syntax highlighting for specific file types
  autocmd BufRead,BufNewFile Appraisals set filetype=ruby
  autocmd BufRead,BufNewFile *.md set filetype=markdown

  " Enable spellchecking for Markdown
  autocmd FileType markdown setlocal spell

  " Automatically wrap at 80 characters for Markdown
  autocmd BufRead,BufNewFile *.md setlocal textwidth=80


augroup END



" ================ Dir specific vimrc ===============

set exrc            " enable per-directory .vimrc files
set secure          " disable unsafe commands in local .vimrc files

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo')
  silent !mkdir ~/.vimbackups > /dev/null 2>&1
  set undodir=~/.vimbackups
  set undofile
endif

" ================ Indentation ======================

set autoindent        " Automatically indent
set smartindent
set smarttab

" Set softtabs with 4 spaces
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab

" ================ Line Breaks ====================

" Don't wrap lines physically (auto insertion of newlines)
set wrap "Don't wrap lines
set nolist " list disables linebreak
set textwidth=0
set wrapmargin=0
set colorcolumn=81
set sidescroll=5
set listchars+=precedes:<,extends:>

" ================ Folds ============================

set foldmethod=indent   " Fold based on indent
set foldnestmax=3       " Deepest fold is 3 levels
set nofoldenable        " Don't fold by default

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                      " Enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~       " Stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*.so,*.swp,*.zip

" ================ Search =======================

set ignorecase
set smartcase
set incsearch       " Incremental search as you type
set hlsearch        " Highlight search results

" ================ Scrolling ========================

" set scrolloff=20         "Start scrolling when we're 20 lines away from margins
" set sidescrolloff=15
set sidescroll=1

" ================ Splits ========================

set splitbelow
set splitright

" ================ Movement ========================

" Disable arrow keys.
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>

" Use <c-[hjkl]> to move around windows
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" ================ Copy and Paste ========================

let os = substitute(system('uname'), "\n", "", "")
set clipboard=unnamed
if os == "Linux"
  " Yank text to the OS clipboard
  noremap <leader>y "+y
  noremap <leader>Y "+Y
elseif os == "Darwin"
  " Yank text to the OS clipboard
  noremap <leader>y "*y
  noremap <leader>Y "*Y
endif


" Preserve indentation while pasting text from the OS clipboard
noremap <leader>p :put *<CR>

" Jump to end of pasted text
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" Select text that was just pasted
noremap gV `[v`]

" Keep selection highlighted while shifting text
xnoremap <  <gv
xnoremap >  >gv

" exit current file
nnoremap <leader>x :x<CR>
" new way of write
nnoremap <leader>w :w<CR>

" map <esc> to <space>i
inoremap <leader>i <esc>

" for tagbar switching
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>

" tab switching
:nn <M-1> 1gt
:nn <M-2> 2gt
:nn <M-3> 3gt
:nn <M-4> 4gt
:nn <M-5> 5gt
:nn <M-6> 6gt
:nn <M-7> 7gt
:nn <M-8> 8gt
:nn <M-9> 9gt
:nn <M-0> :tablast<CR>

" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if &buftype != 'quickfix' && getcmdwintype() == '' | silent NERDTreeMirror | endif

" ================ Custom Settings ========================
for fpath in split(globpath('~/.vim/settings', '*.vim'), '\n')
  exe 'source' fpath
endfor
