return require('packer').startup(function(use)

        -- Manage packer.nvim itself
        use 'wbthomason/packer.nvim'

        -- Plugin to manipulate character pairs quickly
        use { "tpope/vim-surround"}

        -- Comment plugin
        use { "tpope/vim-commentary"}

        -- Theme
        use "rebelot/kanagawa.nvim"
        vim.cmd[[colorscheme kanagawa]]

        -- treesitter is used by orgmode
        use {'nvim-treesitter/nvim-treesitter'}

        -- Tree-sitter configuration
        require'nvim-treesitter.configs'.setup {
          ensure_installed = {'bash', 'c','go', 'org','javascript','json', 'lua','markdown','rust','typescript','yaml'}, -- Or run :TSUpdate org

          -- If TS highlights are not enabled at all, 
          -- or disabled via ``disable`` prop, 
          -- highlighting will fallback to 
          -- default Vim syntax highlighting
          highlight = {
            enable = true,
            disable = {'org'}, -- Remove this to use TS highlighter for some of the highlights (Experimental)
            additional_vim_regex_highlighting = {'org'}, -- Required since TS highlighter doesn't support all syntax features (conceal)
          },
        }


        -- orgmode
        use {'nvim-orgmode/orgmode', config = function()

                -- require('orgmode').setup
                require('orgmode').setup({
                        org_blank_before_new_entry = {heading=false,plain_list_item=false}
                })
        end
}
end)
