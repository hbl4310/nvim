return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter")
    configs.setup({
      ensure_installed = {
        "help", "c", "rust", "lua", "vim", "vimdoc", "javascript", "typescript", "html", "python", "julia"
      },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
