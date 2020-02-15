let g:ale_sign_error = ''
let g:ale_sign_warning = ''
let g:ale_completion_enabled = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_swift_swiftlint_use_defaults = 1
let g:ale_open_list = 0
let g:ale_lint_delay = 1000
let g:ale_linters = {
  \ 'go': ['golint', 'go vet', 'go build'],
  \ 'python': ['autopep8']
  \ }
nmap ]a <Plug>(ale_next_wrap)
nmap [a <Plug>(ale_previous_wrap)
