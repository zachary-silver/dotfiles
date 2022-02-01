" ~~~~~~~~~~~~~~~~~~~~~~~~~~ lsp Key Mappings ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Jumps to definition of symbol under cursor.
nnoremap <leader>gd :lua vim.lsp.buf.definition()<CR>

" Opens up help window for symbol under cursor.
nnoremap <leader>gh :lua vim.lsp.buf.hover()<CR>

" Renames all occurences of symbol under cursor.
nnoremap <leader>ra :lua vim.lsp.buf.rename()<CR>
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
