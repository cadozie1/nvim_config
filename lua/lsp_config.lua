require('mason').setup()

require('mason-lspconfig').setup({
    ensure_installed = {
        "pylsp",
        "clangd",
        "cmake",
        "lua_ls",
        "bashls"
    }
})

require('lspconfig')

vim.diagnostic.config({
    virtual_text = false -- don't show diagnostics as inline virtual text
})

local on_attach = function(client, bufnr)
    local opts = { noremap = true, silent = true }
    -- Add keybindings that are enabled when there is a LSP active
    vim.keymap.set('n', '<F2>', vim.lsp.buf.format, opts)
end

local capabilities = require('cmp_nvim_lsp').default_capabilities(
    vim.lsp.protocol.make_client_capabilities()
)

-- Options for specific language servers
local server_opts = {
    ["lua_ls"] = function(opts)
        opts.settings = {
            Lua = {
                runtime = {
                    version = 'LuaJIT'
                },
                diagnostics = {
                    -- Get the language server to recognize the `vim` global
                    -- for nvim configs
                    globals = { 'vim', 'packer_bootstrap' },
                },
                workspace = {
                    library = vim.api.nvim_get_runtime_file("", true),
                    checkThirdParty = false,
                },
                telemetry = {
                    enable = false,
                },
            }
        }
    end,
}

-- LSP installer settings
require('mason-lspconfig').setup_handlers({
    function(server)
        local opts = {
            on_attach = on_attach,
            capabilities = capabilities,
            update_in_insert = true,
        }

        if server_opts[server] then
            server_opts[server](opts)
        end

        -- clangd setup is done in the clangd_extensions setup
        if server ~= 'clangd' then
            require('lspconfig')[server].setup(opts)
        end
    end
})

require("clangd_extensions").setup {
    -- pass clangd settings to lspconfig here
    server = {
        noremap = true,
        silent = true,
        on_attach = on_attach,
        capabilities = capabilities,
    }
}
