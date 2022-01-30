local nvim_lsp = require 'lspconfig'
local aerial = require 'aerial'

local on_attach = function(client, bufnr)
    local function buf_set_option(...)
        vim.api.nvim_buf_set_option(bufnr, ...)
    end
    -- Set up your LSP clients here, using the aerial on_attach method

    aerial.on_attach(client, bufnr)

    -- Repeat this for each language server you have configured

    -- Enable completion triggered by <c-x><c-o>
    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
end

-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- The following example advertise capabilities to `clangd`.

nvim_lsp.rust_analyzer.setup {
    capabilities = capabilities,
    on_attach = on_attach,
    flags = {debounce_text_changes = 150}
}

if vim.g.target_is_rpi then
    nvim_lsp.clangd.setup {
        capabilities = capabilities,
        on_attach = on_attach,
        flags = {debounce_text_changes = 150}
    }
end

if not(vim.g.target_is_rpi) then
    nvim_lsp.gopls.setup {
        capabilities = capabilities,
        on_attach = on_attach,
        flags = {debounce_text_changes = 150}
    }

    nvim_lsp.sumneko_lua.setup {
        capabilities = capabilities,
        on_attach = on_attach,
        flags = {debounce_text_changes = 150},
        settings = {
            Lua = {
                diagnostics = {
                    -- Get the language server to recognize the `vim` global
                    globals = {'vim', 'use'}
                }
            }
        }
    }

    nvim_lsp.efm.setup {
        init_options = {documentFormatting = true},
        settings = {
            rootMarkers = {".git/"},
            languages = {
                lua = {{formatCommand = "lua-format -i", formatStdin = true}}
            }
        }
    }
end
