require'lualine'.setup({
    disabled_filetypes = {"aerial", "Outline"},
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
--        lualine_c = {'filename'},
        lualine_c = { 'lsp_progress' , {'filename', path = 1, shorting_target=80}},
--        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_x = {'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    extensions = {
        'toggleterm',
        'nvim-tree',
        --'symbols-outline'
    },
    tabline = {
        lualine_a = {'buffers'},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {'tabs'}
    }
})
