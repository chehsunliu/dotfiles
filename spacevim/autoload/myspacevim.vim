function! myspacevim#before() abort
  let g:markdown_syntax_conceal = 0

  set mouse=

  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
endfunction
