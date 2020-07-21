"" ale config

let g:ale_linters = {
\   'python': [
\     'flake8',
\     'pylint'
\   ],
\   'javascript': [
\     'eslint',
\     'prettier'
\   ]
\ }

let g:ale_fixers = {
\   'python': [
\     'isort',
\     'yapf',
\     'remove_trailing_lines',
\     'trim_whitespace'
\   ],
\   'javascript': [
\     'eslint',
\     'prettier'
\   ]
\ }

let g:ale_fix_on_save = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 1
