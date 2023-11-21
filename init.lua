require('plugins')
require('plugin_config')
require('cmp_config')
require('lsp_config')

-- NVIM SETTINGS -----------------------------------------------------------------

-- Enable 24-bit colors
vim.opt.termguicolors=true

-- Enable syntax highilighting
vim.opt.autoindent=true

-- Turn on line numbers
vim.opt.number=true


--Make tabs be 4 spaces --

-- Number of spaces for auto indentation
vim.opt.shiftwidth=4
-- Spaces per tab to insert when tab is pressed
vim.opt.softtabstop=4
-- Tab char width
vim.opt.tabstop=4
-- Replace tabs with spaces
vim.opt.expandtab=true


-- Show line/col of cursor position
vim.opt.ruler=true


-- Case insensitive searching, except when search string contains caps
vim.opt.ignorecase=true
vim.opt.smartcase=true

-- Normal backspace behavior
vim.opt.backspace="eol,start,indent"

-- Highlight matching braces/parentheses
vim.opt.showmatch=true

-- Enhanced tab completion in command mode
vim.opt.wildmenu=true

-- Search for words as you type
vim.opt.incsearch=true

-- Enable mouse support - SOOOOO important XD
vim.opt.mouse='a'

-- Enforce utf8
vim.opt.encoding='utf8'

-- Ensure the cursor remains at least 3 lines above lowest line while scrolling
vim.opt.scrolloff=3

vim.opt.listchars='trail:-'

-- Virtual editing in visual block mode
vim.opt.ve='block'
