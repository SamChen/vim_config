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

" let g:ycm_semantic_triggers =  {
"   \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
"   \ 'cs,lua,javascript': ['re!\w{2}'],
"   \ }
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
