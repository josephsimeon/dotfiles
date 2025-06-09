--  @file   telescope.lua
--  @brief  Fuzzy finder
--  @author Joseph Simeon
--  @date   14-03-2025 17:17:10

return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
        require('telescope').setup {
            pickers = {
                buffers = {
                    previewer = false,
                    theme = 'dropdown',
                },
                find_files = {
                    path_display = { 'smart' },
                    layout_config = {
                        prompt_position = 'top',
                        preview_width = 0.65,
                    },
                    sorting_strategy = 'ascending',
                },
                live_grep = {
                    theme = "ivy",
                },
                help_tags = {
                    theme = "ivy",
                },
            },
            extensions = {
                fzf = {}
            }
        }
        require('telescope').load_extension('fzf')
    end,
    opts = {
        vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>'),
        vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>'),
        vim.keymap.set('n', '<leader>fb', ':Telescope buffers<CR>'),
        vim.keymap.set('n', '<leader>fh', ':Telescope help_tags<CR>'),
    },
}
