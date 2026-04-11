return {
  {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
    lazy = "leetcode.nvim" ~= vim.fn.argv(0, -1),
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-telescope/telescope.nvim",
    },
    opts = {
      lang = "cpp",
      cn = {
        enabled = true,
        translator = false,
        translate_problems = false,
      },
      picker = {
        provider = "telescope",
      },
      editor = {
        fold_imports = false,
      },
    },
  },
}
