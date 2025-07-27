return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            typescript = { "biome-check" }
        },
    },
    keys = {
        { "<leader>cf", function() require("conform").format() end, desc = "Conform - Format" },
    }
}
