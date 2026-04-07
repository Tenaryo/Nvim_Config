return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").setup({})

      local languages = { "c", "cpp", "bash", "python", "cmake" }
      local installed = require("nvim-treesitter").get_installed()
      local to_install = vim.tbl_filter(function(lang)
        return not vim.list_contains(installed, lang)
      end, languages)

      if #to_install > 0 then
        require("nvim-treesitter").install(to_install)
      end

      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "c", "cpp", "bash", "sh", "python", "cmake" },
        callback = function()
          pcall(vim.treesitter.start)
        end,
      })
    end,
  },
}
