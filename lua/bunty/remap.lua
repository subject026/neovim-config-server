local function map(m, k, v)
  vim.keymap.set(m, k, v, { silent = true })
end


vim.g.mapleader = " "
map("n", "<leader>pv", "<cmd>:Ex<CR>")

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/bunty/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");
