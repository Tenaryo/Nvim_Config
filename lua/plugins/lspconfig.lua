return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "saghen/blink.cmp",
      "p00f/clangd_extensions.nvim",
    },
    config = function()
      local capabilities = require("blink.cmp").get_lsp_capabilities()

      vim.lsp.config("clangd", {
        capabilities = capabilities,
      })

      vim.lsp.enable("clangd")

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local bufmap = function(mode, lhs, rhs, desc)
            vim.keymap.set(mode, lhs, rhs, { buffer = args.buf, desc = desc })
          end

          bufmap("n", "gd", vim.lsp.buf.definition, "Go to definition")
          bufmap("n", "gr", vim.lsp.buf.references, "Go to references")
          bufmap("n", "gI", vim.lsp.buf.implementation, "Go to implementation")
          bufmap("n", "gy", vim.lsp.buf.type_definition, "Go to type definition")
          bufmap("n", "K", vim.lsp.buf.hover, "Hover documentation")
          bufmap("n", "gD", vim.lsp.buf.declaration, "Go to declaration")
          bufmap("n", "<leader>rn", vim.lsp.buf.rename, "Rename symbol")
          bufmap("n", "<leader>ca", vim.lsp.buf.code_action, "Code action")
          bufmap("n", "<leader>rs", ":LspRestart<cr>", "Restart LSP")
          bufmap("n", "<leader>ch", "<cmd>ClangdSwitchSourceHeader<cr>", "Switch header/source")
          bufmap("n", "<leader>co", "<cmd>ClangdShowCompilationFlags<cr>", "Show compilation flags")
        end,
      })
    end,
  },
}
