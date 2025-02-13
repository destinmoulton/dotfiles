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
        
        -- vim-airline
        -- Better status bar
        use "vim-airline/vim-airline"
        -- fix the bug where airline broke due to unicode issue
        vim.g['airline#extensions#whitespace#symbol'] = ' '

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



        -- vim-easymotion
        -- Easily jump around
        -- Either ,s or ,/ for search character function
        use "easymotion/vim-easymotion" 
        vim.keymap.set("n", "<leader>", "<Plug>(easymotion-prefix)")
        vim.keymap.set("n", "<leader>/", "<Plug>(easymotion-overwin-f)")


        -- pencil
        -- makes editing text/markdown smarter
        -- configure this in `pencil.lua`
        use "preservim/vim-pencil"

        -- goyo
        -- distraction free writing plugin
        -- Enable with :Goyo
        use "junegunn/goyo.vim"
        -- Set the keymap <leader>g to start goyo
        vim.keymap.set("n", "<leader>g", "<cmd>Goyo<CR>")

        -- peekaboo
        -- shows registers when pasting
        use "junegunn/vim-peekaboo"

        -- vim-markdown
        -- gives folding and navigating ability
        use "preservim/vim-markdown"

        -- aerial
        -- Opens a table of contents window
        -- Mapped to <leader>a
        use({
                "stevearc/aerial.nvim",
                config = function()
                        require("aerial").setup()
                end,
        })
        -- Set the keymap <leader>a to start aerial
        vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")


        -- orgmode
        use {'nvim-orgmode/orgmode', config = function()

                -- require('orgmode').setup
                require('orgmode').setup({
                        org_blank_before_new_entry = {heading=false,plain_list_item=false}
                })


        end}
end)
