return require('packer').startup(function(use)

    -------------------------------------------------------------------------
    -- PACKER
    use 'https://github.com/wbthomason/packer.nvim'

    -------------------------------------------------------------------------
    -- VISUALS
    
    -- Color scheme

    use({
	 "catppuccin/nvim",
	 as = "catppuccin"
    })

    use "Groctel/pddl.vim"

    -- completion
    --    use {'ms-jpq/coq_nvim', branch = 'coq'}
    --use {'ms-jpq/coq.artifacts', branch = 'artifacts'}
    --use {'ms-jpq/coq.thirdparty', branch = '3p'}
    --
    
    -- Semantic highlighting
    use 'https://github.com/RRethy/vim-illuminate'

    -- GIT

    -- Main git wrapper
    use 'https://github.com/tpope/vim-fugitive'

    -- Show most recent commit
    use 'https://github.com/rhysd/git-messenger.vim'

    -- Git diff in sign column
    use 'https://github.com/airblade/vim-gitgutter'

     -- Smooth scrolling
    use 'https://github.com/psliwka/vim-smoothie'


    -- Better commenting
    use 'https://github.com/preservim/nerdcommenter'

    -- LSP
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }

    -- Treesitter
    use {
        'https://github.com/nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- Completion
    use 'https://github.com/hrsh7th/cmp-nvim-lsp'
    use 'https://github.com/hrsh7th/cmp-cmdline'
    use 'https://github.com/hrsh7th/cmp-buffer'
    use 'https://github.com/hrsh7th/cmp-path'
    use 'https://github.com/hrsh7th/nvim-cmp'

    -- LaTeX suite
    use 'https://github.com/lervag/vimtex'

    -- C++ clangd_extensions
    use 'https://github.com/p00f/clangd_extensions.nvim'

     -- Automatically set up configuration after cloning packer.nvim
    -- Always to be put after plugins

    if packer_bootstrap then
        require('packer').sync()
    end
end)
