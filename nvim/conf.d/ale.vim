let g:ale_completion_enabled = 1
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'
let g:ale_fix_on_save = 1
let g:ale_python_pylint_change_directory = 0
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_list_window_size = 5
let g:ale_echo_msg_format = '[%severity%] %s'
let g:ale_linters = {
  \'sh' : ['shellcheck'],
  \'go':  ['gopls'],
\ }
let g:ale_fixers = {
  \'*':  ['remove_trailing_lines', 'trim_whitespace'],
  \'sh': ['shfmt'],
\}
