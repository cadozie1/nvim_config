-- catppuccin stuffff
local catppuccin = require("catppuccin")

--configure
catppuccin.setup({transparent_background=true})
vim.cmd[[colorscheme catppuccin]]

-- vimtex
vim.g.vimtex_compiler_progname = 'nvr'
vim.g.tex_flavor = 'latex'
vim.g.vimtex_view_general_viewer = 'okular'
vim.g.vimtex_view_general_options = '--unique file:@pdf\\#src:@line@tex'
vim.g.vimtex_view_general_options_latexmk = '--unique'

-- NERDCommenter
-- Add spaces after comment delimiters by default
vim.g.NERDSpaceDelims = true
vim.g.NERDDefaultAlign = 'left'

-- Enable trimming of trailing whitespace when uncommenting
vim.g.NERDTrimTrailingWhitespace = true


-- Do not create default mappings
vim.g.NERDCreateDefaultMappings = false

-- treesitter
require('nvim-treesitter.configs').setup {
    ensure_installed = "all",
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    }
}
