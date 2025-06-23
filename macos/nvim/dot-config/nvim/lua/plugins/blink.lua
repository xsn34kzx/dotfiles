return {
    "Saghen/blink.cmp",
    version = "1.*",
    opts = {
        keymap = { preset = "default" },
        appearance = {
            nerd_font_variant = "mono",
        },
        completion = { documentation = { auto_show = true } },
        signature = { enabled = true },
        sources = {
            default = { "lsp", "path", "snippets" },
        },
        fuzzy = { implementation = "prefer_rust_with_warning" },
    },
    opts_extend = { "sources.default" },
}
