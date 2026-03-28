return {
  {
    "mikavilpas/yazi.nvim",
    version = "*",
    event = "VeryLazy",
    dependencies = {
      { "nvim-lua/plenary.nvim", lazy = true },
    },
    keys = {
      {
        "<leader>y",
        mode = { "n", "v" },
        "<cmd>Yazi<cr>",
        desc = "Open yazi at current file",
      },
    },
    opts = {
      open_for_directories = true,
      floating_window_scaling_factor = 0.9,
      yazi_floating_window_border = "rounded",
      change_neovim_cwd_on_close = false,
      keymaps = {
        show_help = "<f1>",
      },
    },
    init = function()
      vim.g.loaded_netrwPlugin = 1
    end,
  },
}
