function! SourceFileIfExists(filename)
  let l:extra_file = fnamemodify($HOME, ':p:h') . '/system-config/.config/nvim/' . a:filename
  if filereadable(l:extra_file)
    execute ':so ' . l:extra_file
  else
    echo 'Could not load ' . a:filename
  endif
  unlet l:extra_file
endfunc

""" Source files
" General
call SourceFileIfExists('general/settings.vim')

" Mappings
call SourceFileIfExists('general/mappings.vim')
call SourceFileIfExists('general/terminal.vim')

" VimPlug Init
call SourceFileIfExists('vim-plug/plugins.vim')

" Plugins configs
call SourceFileIfExists('plugins-config/coc.vim')
call SourceFileIfExists('plugins-config/vim-ctrlspace.vim')
call SourceFileIfExists('plugins-config/vim-test.vim')
call SourceFileIfExists('plugins-config/vim-go.vim')
call SourceFileIfExists('plugins-config/nerdtree.vim')

" Themes
call SourceFileIfExists('themes/airline.vim')
call SourceFileIfExists('themes/dracula.vim')
