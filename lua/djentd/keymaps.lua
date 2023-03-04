local keymap = vim.api.nvim_set_keymap
local opts = { }

vim.g.mapleader = ","

-- Vim
keymap("i", "ii", "<ESC>", opts)

-- Nerdtree
keymap("n", "<F6>", ":NERDTreeToggle<CR>", opts)

-- Tagbar
keymap("n", "<F7>", ":TagbarToggleVCS<CR>", opts)

-- Telescope
keymap("n", "t", ":Telescope<CR>", opts)

-- Bufferline
keymap("n", "[b", ":BufferLineCyclePrev<CR>", opts)
keymap("n", "]b", ":BufferLineCycleNext<CR>", opts)
