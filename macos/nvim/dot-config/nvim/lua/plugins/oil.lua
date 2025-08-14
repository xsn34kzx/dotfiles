return {
    {
        "stevearc/oil.nvim",
        lazy = false,
        opts = {
            win_options = {
                signcolumn = "yes:2",
            },
            keymaps = {
                ["ga"] = {
                    desc = "Add file/folder under the cursor to Git index",
                    callback = function()
                        local oil = require("oil")
                        local dir = oil.get_current_dir(vim.api.nvim_get_current_buf())
                        local entry = oil.get_cursor_entry()
                        if dir and entry then
                            vim.cmd { cmd = "Git", args = { "add " .. dir .. entry.name }}
                        end
                    end,
                },
                ["gr"] = {
                    desc = "Reset file/folder under the cursor back to Git working tree HEAD",
                    callback = function()
                        local oil = require("oil")
                        local dir = oil.get_current_dir(vim.api.nvim_get_current_buf())
                        local entry = oil.get_cursor_entry()
                        if dir and entry then
                            vim.cmd { cmd = "Git", args = { "restore --staged --worktree " .. dir .. entry.name }}
                        end
                    end,
                }
            }
        },
        keys = {
            { "<leader>-", "<cmd>Oil<cr>", desc = "Oil - Open Parent Directory" },
        },
    },
    {
        "refractalize/oil-git-status.nvim",
        dependencies = {
            "stevearc/oil.nvim",
        },
        config = true,
    },
}
