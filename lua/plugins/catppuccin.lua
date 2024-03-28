return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        mini = {
          enabled = true,
          indentscope_color = "",
        },
      },
    })

    vim.cmd.colorscheme("catppuccin-mocha")
  end,
}
