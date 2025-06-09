--  @file   gitsigns.lua
--  @brief  Added in git related signs to the gutter, as well as other things related to managing
--          changes.
--  @author Joseph Simeon
--  @date   13-03-2025 16:08:00

return {
    'lewis6991/gitsigns.nvim',
    opts = {
        signs = {
            add = { text = '+' },
            change = { text = '~' },
            delete = { text = '_' },
            topdelete = { text = '‾' },
            changedelete = { text = '~' },
        },
        signs_staged = {
            add = { text = '+' },
            change = { text = '~' },
            delete = { text = '_' },
            topdelete = { text = '‾' },
            changedelete = { text = '~' },
        },
        signs_staged_enable = true,
        signcolumn = true, -- toggle with `:Gitsigns toggle_signs`
        numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
        linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
        word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
        watch_gitdir = {
            follow_files = true
        },
        auto_attach = true,
        attach_to_untracked = false,
        current_line_blame = false, -- toggle with `:Gitsigns toggle_current_line_blame`
        current_line_blame_opts = {
            virt_text = true,
            virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
            delay = 1000,
            ignore_whitespace = false,
            virt_text_priority = 100,
            use_focus = true,
        },
        current_line_blame_formatter = '<author>, <author_time:%R> - <summary>',

        -- Mappings
        vim.keymap.set('n', '[h', ':Gitsigns nav_hunk prev<CR>'),
        vim.keymap.set('n', ']h', ':Gitsigns nav_hunk next<CR>'),
        vim.keymap.set('n', '<leader>hs', ':Gitsigns stage_hunk<CR>'),
        vim.keymap.set('v', '<leader>hs', ":'<,'>Gitsigns stage_hunk<CR>"),
        vim.keymap.set('n', '<leader>hr', ':Gitsigns reset_hunk<CR>'),
        vim.keymap.set('v', '<leader>hr', ":'<,'>Gitsigns reset_hunk<CR>"),
        vim.keymap.set('n', '<leader>hp', ':Gitsigns preview_hunk<CR>'),
    },
}
