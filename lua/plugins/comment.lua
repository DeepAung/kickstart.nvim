return {
  "numToStr/Comment.nvim",
  config = function()
    require("Comment").setup()

    local api = require("Comment.api")
    local toggleNormal = api.toggle.linewise.current
    local toggleVisual = "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>"

    vim.keymap.set("n", "<C-_>", toggleNormal, { desc = "Toggle comment" })
    vim.keymap.set("v", "<C-_>", toggleVisual, { desc = "Toggle comment" })
    vim.keymap.set("n", "<leader>/", toggleNormal, { desc = "Toggle comment" })
    vim.keymap.set("v", "<leader>/", toggleVisual, { desc = "Toggle comment" })
  end,
}
