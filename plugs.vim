" ========================================
" Vim plugin configuration
" ========================================
"
set rtp+=/usr/local/opt/fzf

" if empty(glob('~/.vim/autoload/plug.vim'))
"   silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
"     \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" endif

call plug#begin('~/.vim_plugs/plugs')


" Languages
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-rails'
" Plug 'mmorearty/elixir-ctags'
Plug 'majutsushi/tagbar'

" General text editing improvements...
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'christoomey/vim-tmux-navigator'
Plug 'liuchengxu/vista.vim'
" show css color
Plug 'ap/vim-css-color'

"reduce the repeat work.
Plug 'honza/vim-snippets'

" General vim improvements
Plug 'justinmk/vim-dirvish'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/vim-slash'
Plug 'ludovicchabant/vim-gutentags'
Plug 'wincent/terminus'
Plug 'vim-python/python-syntax'
Plug 'preservim/nerdtree'


" Cosmetics, color scheme, Powerline...
" Plug 'altercation/vim-colors-solarized'
Plug 'overcache/NeoSolarized'


" auto complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}
Plug 'davidhalter/jedi-vim'

Plug 'tell-k/vim-autopep8'
Plug 'terryma/vim-expand-region'

call plug#end()
