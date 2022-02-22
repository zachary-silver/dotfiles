if pcall(function() require('lspconfig') end) ~= true then
    print('nvim-lspconfig.lua: require(\'lspconfig\') returned nil. lsp-config may not be installed.')
    return
end

if pcall(function() require('cmp_nvim_lsp') end) ~= true then
    print('nvim-lspconfig.lua: require(\'cmp_nvim_lsp\') returned nil. cmp_nvim_lsp may not be installed.')
    return
end

local lsp = require('lspconfig')

local on_attach = function(client, bufnr)
    local function buf_set_keymap(...)
        vim.api.nvim_buf_set_keymap(bufnr, ...)
    end

    local opts = { noremap = true, silent = true }

    -- Jumps to definition of symbol under cursor.
    buf_set_keymap('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    -- Opens a list of all references to symbol under cursor.
    buf_set_keymap('n', '<leader>sr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    -- Shows diagnostic window for errors on current line.
    buf_set_keymap('n', '<leader>sd', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
    -- Shows help window for symbol under cursor.
    buf_set_keymap('n', '<leader>sh', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    -- For some reason we're always jumping into hover window by default. This prevents that.
    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { focusable = false })
    -- Renames all occurences of symbol under cursor.
    buf_set_keymap('n', '<leader>ra', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    -- Opens the code actions available for the cursor's current location.
    buf_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)

    -- Set updatetime for CursorHold
    vim.api.nvim_command [[set updatetime=1000]]
    -- Show diagnostic popup on cursor hold
    vim.api.nvim_command [[autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })]]

    -- Formats the file on save.
    if client.resolved_capabilities.document_formatting then
        vim.api.nvim_command [[augroup LSPFormat]]
        vim.api.nvim_command [[autocmd! * <buffer>]]
        vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
        vim.api.nvim_command [[augroup END]]
    end
end

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- rust_analyzer doesn't support real-time linting as of 01/31/22, so we use rls as well.
-- We use both because rls doesn't support other things that rust_analyzer does, like vim.lsp.buf.rename().
local servers = {
    'tsserver',
    'clangd',
    'rls',
    'rust_analyzer',
    'pyright',
    'html'
}

for _, server in ipairs(servers) do
    lsp[server].setup {
        capabilities = capabilities,
        on_attach = on_attach,
    }
end
