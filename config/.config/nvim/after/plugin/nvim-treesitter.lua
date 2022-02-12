if pcall(function() return require('nvim-treesitter.configs') end) ~= true then
    print('treesitter.lua: require(\'nvim-treesitter.configs\') returned nil. nvim-treesitter may not be installed.')
    return
end

local treesitter = require('nvim-treesitter.configs')

treesitter.setup {
    highlight = {
        enable = true,
        disable = {},
    },
    indent = {
        enable = true,
        disable = {},
    },
    ensure_installed = {
        "tsx",
        "toml",
        "json",
        "yaml",
        "html",
        "scss",
        "lua",
    },
    autotag = {
        enable = true,
    }
}

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }