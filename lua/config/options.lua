local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smartindent = true
opt.shiftround = true

opt.wrap = true
opt.breakindent = true
opt.linebreak = true
opt.cursorline = true
opt.scrolloff = 4
opt.sidescrolloff = 8

opt.termguicolors = true
opt.signcolumn = "yes"
opt.updatetime = 250
opt.timeoutlen = 300
opt.completeopt = "menu,menuone,noselect"

opt.splitright = true
opt.splitbelow = true
opt.splitkeep = "screen"

opt.undofile = true
opt.swapfile = false
opt.backup = false
opt.writebackup = false

opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

opt.clipboard = "unnamedplus"
opt.mouse = "a"

opt.inccommand = "split"
opt.list = true
opt.listchars = { tab = "  ", trail = " ", nbsp = " " }
opt.fillchars = { eob = " " }
opt.showmode = false
opt.statusline = " %m %f %= %p%% "
opt.pumheight = 10
opt.wildmode = "longest:full,full"
opt.wildoptions = "pum"
opt.formatoptions = "jcroqlnt"

vim.diagnostic.enable(false)
