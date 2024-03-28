return {
  "nvim-tree/nvim-tree.lua",
  config = function()
    require("nvim-tree").setup({})

    local api = require("nvim-tree.api")
    local map = function(keys, func, desc)
      vim.keymap.set("n", keys, func, { desc = "nvim-tree: " .. desc })
    end

    map("<leader>n", api.tree.toggle, "Toggle")
    map("<C-n>", api.tree.toggle, "Toggle")
    map("?", api.tree.toggle_help, "Help")
  end,
}
