return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup({})

    vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end, { desc = "[A]ppend harpoon list" })
    vim.keymap.set("n", "<leader>h", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "toggle [H]arpoon list" })

    vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end, { desc = "goto [1]st buffer" })
    vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end, { desc = "goto [2]nd buffer" })
    vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end, { desc = "goto [3]rd buffer" })
    vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end, { desc = "goto [4]th buffer" })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set("n", "<C-p>", function() harpoon:list():prev() end, { desc = "goto [P]revious buffer" })
    vim.keymap.set("n", "<C-n>", function() harpoon:list():next() end, { desc = "goto [N]ext buffer" })
  end,
}
