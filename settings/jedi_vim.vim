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
