

-- Update this path
 local extension_path = vim.env.HOME .. '/.vscode/extensions/vadimcn.vscode-lldb-1.7.0/'
 local codelldb_path = extension_path .. 'adapter/codelldb'
 local liblldb_path = extension_path .. 'lldb/lib/liblldb.so'
--

local opts = {
    tools = { -- rust-tools options
        autoSetHints = true,
        inlay_hints = {
            show_parameter_hints = false,
            parameter_hints_prefix = "",
            other_hints_prefix = ""
        }
    },

    -- all the opts to send to nvim-lspconfig
    -- these override the defaults set by rust-tools.nvim
    -- see https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#rust_analyzer
    server = {
        -- on_attach is a callback called when the language server attachs to the buffer
        -- on_attach = on_attach,
       standalone = true,
--        settings = {
            -- to enable rust-analyzer settings visit:
            -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
            --["rust-analyzer"] = {
            --   checkOnSave = {command = "clippy"},
            --  cargo = {
            --       autoreload = true
            --    }
 --           }
      --  }
    },
     dap = {
        adapter = require('rust-tools.dap').get_codelldb_adapter( codelldb_path, liblldb_path)
    },
}

require('rust-tools').setup(opts)
    
