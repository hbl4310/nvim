vim.g.mapleader = " "
--vim.g.maplocalleader = "\\"

-- shortcut for directory explorer
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)

vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("i", "kj", "<Esc>")

-- in visual mode, with an entire line(s) selected, pressing J/K will move that entire line up or down one line
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- normally, J would append below line and move cursor to end; this keeps cursor in place
vim.keymap.set("n", "J", "mzJ`z")

-- C-d,u is usually half page jumping, but this mapping keeps cursor in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- in normal mode, select word under cursor and replace all it everywhere in the file, pressing <leader>s<replacement>
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- pane navigations in normal and terminal modes
vim.keymap.set("n", "<C-j>",  "<C-w>j", { noremap = true })
vim.keymap.set("n", "<C-k>",  "<C-w>k", { noremap = true })
vim.keymap.set("n", "<C-h>",  "<C-w>h", { noremap = true })
vim.keymap.set("n", "<C-l>",  "<C-w>l", { noremap = true })
vim.keymap.set("t", "<C-j>",  "<C-\\><C-N><C-w>j", { noremap = true })
vim.keymap.set("t", "<C-k>",  "<C-\\><C-N><C-w>k", { noremap = true })
vim.keymap.set("t", "<C-h>",  "<C-\\><C-N><C-w>h", { noremap = true })
vim.keymap.set("t", "<C-l>",  "<C-\\><C-N><C-w>l", { noremap = true })

-- tab navigations
vim.keymap.set("n", "<leader>tn", vim.cmd.tabnew)
vim.keymap.set("n", "<leader>to", vim.cmd.tabonly)
vim.keymap.set("n", "<leader>tc", vim.cmd.tabclose)
-- go to last accessed tab
vim.keymap.set("n", "<leader>tl", function()
  if vim.g.lasttab then
    vim.cmd('tabn ' .. vim.g.lasttab)
  end
end)

-- remove trailing whitespace on save
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})

-- To map <Esc> to exit terminal-mode: >vim
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>" { noremap = true })
