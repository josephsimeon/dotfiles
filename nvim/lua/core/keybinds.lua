--  @file   lua/core/keybinds.lua
--  @brief  Bindings for key shortcuts in neovim
--  @author Joseph Simeon
--  @date   16-05-2025 16:47

-- yank line
vim.keymap.set("n", "Y", "y$")

-- yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- paste from system clipboard
vim.keymap.set({ "n", "v" }, "<leader>P", [["+P]])

-- delete to void register instead saving to text register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- delete to void register and paste over current highlight
vim.keymap.set("x", "<leader>dP", [["_dP]])

-- move up or down on highlight
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- append to this line, keep cursor at current location
vim.keymap.set("n", "J", "mzJ`z")

-- half page jumping within the file while cursor stays in the the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- when searching through the page keep cursor in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "Q", "<nop>")

-- find and replace the current word the cursor is currently on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- change mode for executable for bash files
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Split window movement
vim.cmd([[
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
]])

