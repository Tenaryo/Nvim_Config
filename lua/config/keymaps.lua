local map = vim.keymap.set

map("", "<Space>", "<Nop>")

map("i", "fs", "<Esc>", { desc = "ESC" })

map("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })

map("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Previous buffer" })
map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<leader>bd", "<cmd>bdelete<cr>", { desc = "Delete buffer" })

map("n", "<Esc>", "<cmd>nohlsearch<cr>")

map("n", "j", "gj", { desc = "Down (wrapped)" })
map("n", "k", "gk", { desc = "Up (wrapped)" })

map("v", "<", "<gv", { desc = "Indent left" })
map("v", ">", ">gv", { desc = "Indent right" })

map("v", "J", ":m '>+1<cr>gv=gv", { desc = "Move line down" })
map("v", "K", ":m '<-2<cr>gv=gv", { desc = "Move line up" })

map("n", "n", "nzz", { desc = "Next search result (centered)" })
map("n", "N", "Nzz", { desc = "Previous search result (centered)" })

map("n", "<leader>x", "<cmd>!chmod +x %<cr>", { desc = "Make file executable", silent = true })
