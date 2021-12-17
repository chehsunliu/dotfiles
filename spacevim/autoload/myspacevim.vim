function! myspacevim#before() abort
  let g:markdown_syntax_conceal = 0

  set mouse=

  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

  " For nand2tetris
  au BufRead,BufNewFile *.hdl set filetype=verilog
  autocmd FileType verilog setlocal ts=4 sts=4 sw=4 expandtab
endfunction
