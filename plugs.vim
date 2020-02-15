" ========================================
" Vim plugin configuration
" ========================================
"
set rtp+=/usr/local/opt/fzf

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.vim_plugs/plugs')


" Languages
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-rails'
Plug 'mmorearty/elixir-ctags'
Plug 'majutsushi/tagbar'

" General text editing improvements...
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'w0rp/ale'

"reduce the repeat work.
Plug 'SirVer/ultisnips'
Plug 'ervandew/supertab'
Plug 'honza/vim-snippets'

" markdown
Plug 'gabrielelana/vim-markdown'

" letax
Plug 'xuhdev/vim-latex-live-preview'

" General vim improvements
Plug 'justinmk/vim-dirvish'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/vim-slash'
Plug 'ludovicchabant/vim-gutentags'
Plug 'wincent/terminus'
Plug 'Shougo/denite.nvim'


" Cosmetics, color scheme, Powerline...
Plug 'iCyMind/NeoSolarized'

" auto complete
Plug 'Valloric/YouCompleteMe'


Plug 'tell-k/vim-autopep8'
Plug 'terryma/vim-expand-region'

call plug#end()
