"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YouCompleteMe
" Autocompletion and
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" source /Users/chliu/github/lsp-examples/vimrc.generated

let g:ycm_add_preview_to_completeopt = 0
" this decides whether I want the preview of a function
let g:ycm_auto_hover=''

let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'

let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=0

let g:ycm_key_invoke_completion = '<C-c>'
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:ycm_server_python_interpreter='/usr/local/bin/python3.9'
set completeopt=menu,menuone

nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>] :YcmCompleter GoToDefinitionElseDeclaration<CR>

noremap <C-c> <NOP>

let g:ycm_semantic_triggers =  {
  \   'c': ['->', '.'],
  \   'objc': ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \            're!\[.*\]\s'],
  \   'ocaml': ['.', '#'],
  \   'cpp,cuda,objcpp': ['->', '.', '::'],
  \   'perl': ['->'],
  \   'php': ['->', '::'],
  \   'cs,d,elixir,go,groovy,java,javascript,julia,perl6,python,scala,typescript,vb': ['re!\w{2}', '.'],
  \   'ruby,rust': ['.', '::'],
  \   'lua': ['.', ':'],
  \   'erlang': [':'],
  \ }

let g:ycm_python_interpreter_path = ''
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]
let g:ycm_global_ycm_extra_conf = '~/.vim_plugs/plugs/YouCompleteMe/.ycm_extra_conf.py'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Jedi
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable Jedi-vim autocompletion and enable call-signatures options
" Youcompleteme is my autocompleter. Jedi-vim is just for pydoc checking
let g:jedi#auto_initialization = 1
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = ""
let g:jedi#show_call_signatures = "0"
autocmd FileType python setlocal completeopt-=preview


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ALE
" Mostly for linter and fixer
" Q: does the lsp conflict with youcompleteme?
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_sign_error = ''
let g:ale_sign_warning = ''
let g:ale_completion_enabled = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_swift_swiftlint_use_defaults = 1
let g:ale_open_list = 0
let g:ale_lint_delay = 1

" LSP Configuration (Pyright)
let g:ale_lsp_servers = { 'python': ['pyright'] }
" Linters
let g:ale_linters = { "python": ["ruff"] }
" Fixers
let g:ale_fixers = { "python": ["ruff", "ruff_format"] }

" Optional: Disable other linters if you only want Ruff
let g:ale_python_flake8_executable = ''
let g:ale_python_pylint_executable = ''
let g:ale_python_mypy_executable = ''

" Optional: Enable format on save
let g:ale_fix_on_save = 1
" Optional: Show diagnostics in sign column
let g:ale_sign_column_always = 1

nmap ]a <Plug>(ale_next_wrap)
nmap [a <Plug>(ale_previous_wrap)
