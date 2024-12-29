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
