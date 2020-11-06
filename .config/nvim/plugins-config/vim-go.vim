let g:go_term_enabled = 1
let g:go_term_mode='vsplit' 
let g:go_term_reuse = 1
let g:go_term_close_on_exit = 0
let g:go_list_autoclose = 1
let g:go_fmt_fail_silently = 0
let g:go_fmt_command = "goimports"
let g:go_list_type = "quickfix"
let g:go_list_type_commands={"GoTestFunc!": "", "GoTestFunc": ""}
let g:go_test_show_name=1
let g:go_def_mapping_enabled = 0
let g:go_auto_type_info = 1
let g:go_test_show_name = 0
let g:go_mod_fmt_autosave = 1
let g:go_def_reuse_buffer = 1

nnoremap gd :GoDef<CR>
nnoremap <C-LeftMouse> :GoDef<CR>
nnoremap <C-RightMouse> :GoDefPop 1<CR>

nnoremap gct :GoAlternate!<CR>

nnoremap gfs :GoFillStruct<CR>
nnoremap gif :GoIfErr<CR>

nnoremap gtf :GoTestFunc!<CR>

"Debug mappings
nnoremap gtd :GoDebugTest<CR>
nnoremap <F9> :GoDebugBreakpoint<CR>
nnoremap <F8> :GoDebugNext<CR>
nnoremap <F11> :GoDebugHalt<CR>
nnoremap <F10> :GoDebugStep<CR>
nnoremap <F4> :GoDebugStop<CR>
let g:go_debug_breakpoint_sign_text = '⬤'
let g:go_debug_mappings = {
    \ '(go-debug-continue)': {'key': 'c', 'arguments': '<nowait>'},
    \ '(go-debug-stop)': {'key': 'q'},
    \ '(go-debug-next)': {'key': 'n', 'arguments': '<nowait>'},
  \ '(go-debug-step)': {'key': 's'},
\}

"Highlights
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_variable_declarations = 1
