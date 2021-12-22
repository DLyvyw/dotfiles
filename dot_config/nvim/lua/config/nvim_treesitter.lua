local configs = require('nvim-treesitter.configs')

configs.setup {
    ensure_installed = "maintained", -- Only use parsers that are maintained
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
        max_file_lines = nil -- Do not enable for files with more than n lines, int
        -- colors = {}, -- table of hex strings
        -- termcolors = {} -- table of colour name strings
    }
}

