--	@file	lua/core/settings.lua
--	@brief	Settings for neovim
--	@author	Joseph Simeon
--	@date	16-03-2025 16:27

-- set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- keybindings placed in core.settings for quicker saving and sourcing
-- when bulding this file.

-- quick action source
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- quick action save
vim.keymap.set({ "n", "v" }, "<leader>W", function()
    vim.cmd("w!")
end)

-- ignore certain files
vim.opt.wildignore = [[
    *.o,
    *.a,
    *.out,
    *.exe,
    *.pyc,
    *.pyo,
    *.git,
]]

-- use case insensitive search, except when using capital letters
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- smartindent to work like c-like ide
vim.opt.smartindent = true

-- use visual bell instead of beep when doing something wrong
vim.opt.visualbell = true

-- enable use of mouse for all modes
vim.opt.mouse = "a"

-- enable the user of numbers on the left column
vim.opt.nu = true

-- set the numbers to relative to my numbered position
vim.opt.relativenumber = true

-- fat cursor
vim.opt.guicursor = ""

-- tabbing and shifting
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.wrap = false

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- set the cursorline
vim.opt.cursorline = true

-- set the colour column to show the soft width limit
vim.opt.colorcolumn = "100"

-- turn off backup due to mostly using git
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- when using the command ":split" and ":vsplit" to split the window below and
-- to the right
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.updatetime = 50

-- netrw
-- key binding to move to file explo-- file exporer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pb", "<C-6>")
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
vim.g.netrw_browse_split = 4
vim.g.netrw_winsize = 80
