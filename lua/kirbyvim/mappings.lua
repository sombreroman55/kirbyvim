local opts = { noremap = true, silent = true }

local map = vim.keymap.set

-- Turn off space in normal and visual mode
map('n', '<space>', '<nop>', opts)
map('v', '<space>', '<nop>', opts)

-- Fuck this command for real
map('n', 'q:', '<nop>', opts)
map('v', 'q:', '<nop>', opts)
map('x', 'q:', '<nop>', opts)

-- Set <space> to leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

-- MODES:
--      normal_mode       = "n"
--      insert_mode       = "i"
--      visual_mode       = "v"
--      visual_block_mode = "x"
--      term_mode         = "t"
--      command_mode      = "c"

-- Quick config access
map('n', '<leader>ev', ':tabedit $MYVIMRC<cr>', opts)
map('n', '<leader>sv', ':source $MYVIMRC<cr>', opts)
map('n', '<leader>fe', ':NvimTreeToggle<cr>', opts)  -- File explorer

map('n', '<leader>cp', function() require("copilot.suggestion").toggle_auto_trigger() end, opts)

-- Use Ctrl+arrow buttons to resize windows
map('n', '<C-Up>', ':resize +2<cr>', opts)
map('n', '<C-Down>', ':resize -2<cr>', opts)
map('n', '<C-Right>', ':vertical resize +2<cr>', opts)
map('n', '<C-Left>', ':vertical resize -2<cr>', opts)

-- Disable arrow buttons
map('n', '<Up>', '<nop>', opts)
map('n', '<Right>', '<nop>', opts)
map('n', '<Left>', '<nop>', opts)
map('n', '<Down>', '<nop>', opts)

-- Copy/paste to system clipboard
map('n', '<leader>y', '"+y', opts)
map('v', '<leader>y', '"+y', opts)
map('n', '<leader>p', '"+p', opts)
map('v', '<leader>p', '"+p', opts)

--[[ Function calls
map('n', '<F10>', function()
    require('droovim.syntax').print_syntax()
end, { silent = true })
--]]

-- INSERT mode mappings
-- ------------------------
map('i', 'jk', '<esc>`^', opts) -- Leave the cursor where it was
map('i', '<Up>', '<nop>', opts)
map('i', '<Right>', '<nop>', opts)
map('i', '<Left>', '<nop>', opts)
map('i', '<Down>', '<nop>', opts)

-- VISUAL mode mappings
-- ------------------------
map('v', "J", ":m '>+1<CR>gv=gv")
map('v', "K", ":m '<-2<CR>gv=gv")
