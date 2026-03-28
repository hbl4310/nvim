-- tab options
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true
-- vim.opt.list = true
-- vim.opt.listchars = "eol:.,tab:>-,trail:~,extends:>,precedes:<"

-- file lines
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
-- vim.opt.signcolumn = "yes:1"
-- vim.opt.scrolloff = 8
-- vim.opt.showcmd = true

-- line wrap
vim.opt.wrap = false

-- searching
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- colours
vim.opt.termguicolors = true

-- keep at least 8 lines at the bottom when scrolling down
vim.opt.scrolloff = 8

-- unnecessary since we have lualine status bar
vim.opt.showmode = false

-- No automatic comment insertion
vim.cmd([[autocmd FileType * set formatoptions-=ro]])

-- Since we have undotree, we can persist undo-files in a more permanent location,
-- so we can reload edit histories for files, rather than rely on ephemeral .swp's
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
