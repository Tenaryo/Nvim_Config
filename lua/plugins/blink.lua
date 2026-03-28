return {
  {
    "saghen/blink.cmp",
    version = "1.*",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      keymap = {
        preset = "default",
      },
      appearance = {
        nerd_font_variant = "mono",
      },
      completion = {
        documentation = {
          auto_show = false,
        },
      },
      signature = {
        enabled = true,
      },
      sources = {
        default = { "lsp", "path", "buffer" },
      },
      fuzzy = {
        implementation = "prefer_rust_with_warning",
      },
    },
  },
}
