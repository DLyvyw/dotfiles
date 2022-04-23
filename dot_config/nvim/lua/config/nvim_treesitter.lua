local configs = require('nvim-treesitter.configs')

configs.setup {
    ensure_installed = {"c", "rust", "typescript", "go", "toml"}, -- Only use parsers that are maintained
    highlight = { -- enable highlighting
        enable = true
    },
    indent = {
        enable = true -- default is disabled anyways
    },
    rainbow = {
        enable = true,
        -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil, -- Do not enable for files with more than n lines, int
        colors = {
            "#a89984",
            "#b16286",
            "#d79921",
            "#a7241d",
            "#689d6a",
            "#d65d0e",
            "#458588"
        }, -- table of hex strings

        -- termcolors = {} -- table of colour name strings
    }
}

