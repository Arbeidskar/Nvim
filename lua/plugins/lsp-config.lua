return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
         end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {"lemminx", "sqlls", "lua_ls"}
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function ()
            local lspconfig = require("lspconfig")
            lspconfig.lemminx.setup({})
            lspconfig.lua_ls.setup({})
            lspconfig.sqlls.setup({})

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
       
        end
    }
}
