"""""" REMEMBER TO INSTALL LSPs
"""""" LIKE `npm i -g typescript` for tsserver
"" ale config
let g:ale_completion_enabled = 0
let g:ale_completion_delay = 100
let g:ale_fix_on_save = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 1
let g:ale_set_highlights = 0
let g:ale_sign_warning = "!!"
let g:ale_sign_error = ">>"
let g:ale_linters = {
\   'python': [
\     'flake8',
\     'pylint'
\   ],
\   'javascript': [
\     'tsserver',
\     'eslint',
\     'prettier'
\   ]
\ }

let g:ale_fixers = {
\ '*': [
\   'remove_trailing_lines',
\   'trim_whitespace'
\ ],
\ 'python': [
\   'isort',
\   'yapf',
\ ],
\ 'javascript': [
\   'eslint',
\   'prettier'
\ ]
\}
