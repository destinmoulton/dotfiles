return require('packer').startup(function(use)
        -- Manage packer.nvim itself
        use 'wbthomason/packer.nvim'

        -- Plugin to manipulate character pairs quickly
        use { "tpope/vim-surround"}

        -- Comment plugin
        use { "tpope/vim-commentary"}

        -- vim-pencil
        use "preservim/vim-pencil"

        -- goyo for distraction free writing
        use "junegunn/goyo.vim"

        -- limelight goes hand in hand with goyo
        -- it highlights the currently edited section
        use "junegunn/limelight.vim"

        -- treesitter is used by orgmode
        use {'nvim-treesitter/nvim-treesitter'}

        -- orgmode
        use {'nvim-orgmode/orgmode', config = function()
                -- Load custom tree-sitter grammar for org filetype
                require('orgmode').setup_ts_grammar()

                -- Tree-sitter configuration
                require'nvim-treesitter.configs'.setup {
                  -- If TS highlights are not enabled at all, 
                  -- or disabled via ``disable`` prop, 
                  -- highlighting will fallback to 
                  -- default Vim syntax highlighting
                  highlight = {
                    enable = true,
                    disable = {'org'}, -- Remove this to use TS highlighter for some of the highlights (Experimental)
                    additional_vim_regex_highlighting = {'org'}, -- Required since TS highlighter doesn't support all syntax features (conceal)
                  },
                  ensure_installed = {'org'}, -- Or run :TSUpdate org
                }

                -- require('orgmode').setup
                require('orgmode').setup({
                        org_blank_before_new_entry = {heading=false,plain_list_item=false}
                })
        end
}
end)
