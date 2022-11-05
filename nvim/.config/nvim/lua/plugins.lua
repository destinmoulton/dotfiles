return require('packer').startup(function(use)
        -- Manage packer.nvim itself
        use 'wbthomason/packer.nvim'

        -- Plugin to manipulate character pairs quickly
        use { "tpope/vim-surround"}

        -- vim-pencil
        use "preservim/vim-pencil"

        -- goyo for distraction free writing
        use "junegunn/goyo.vim"

        -- limelight goes hand in hand with goyo
        -- it highlights the currently edited section
        use "junegunn/limelight.vim"
end)
