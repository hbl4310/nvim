return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
        "nvim-treesitter/nvim-treesitter-textobjects",
    },
    lazy = false,
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter")
        configs.setup({
            -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
            install_dir = vim.fn.stdpath('data') .. '/site',
            ensure_installed = {
               "help", "c", "rust", "lua", "vim", "vimdoc", "javascript", "typescript", "html", "python", "julia"
            },
            -- Install parsers synchronously (only applied to `ensure_installed`)
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
        configs.install({ "python", "julia", "rust", "javascript", "typescript" })
    end
}
