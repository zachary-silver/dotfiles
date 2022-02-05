" ~~~~~~~~~~~~~~~~~~~~~~~~~~ lsp Key Mappings ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Jumps to definition of symbol under cursor.
nnoremap <leader>gd :lua vim.lsp.buf.definition()<CR>

" Shows references of symbol under cursor.
nnoremap <leader>sr :lua vim.lsp.buf.references()<CR>

" Shows help window for symbol under cursor.
nnoremap <leader>sh :lua vim.lsp.buf.hover()<CR>

" Renames all occurences of symbol under cursor.
nnoremap <leader>ra :lua vim.lsp.buf.rename()<CR>

" Shows diagnostic window for errors on current line.
nnoremap <leader>sd :lua vim.diagnostic.open_float()<CR>
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
