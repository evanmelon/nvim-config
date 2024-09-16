return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
      local neo_tree = require("neo-tree")
      local width = 30

      -- 動態調整寬度的函數
      function AdjustNeoTreeWidth(change)
        width = width + change
        if width < 10 then width = 10 end
        if width > 50 then width = 50 end
        -- 直接調整 Neo-tree 窗口寬度
        vim.cmd("vertical resize " .. width)
        print("Neo-tree width: " .. width)
      end

      -- Neo-tree 基本設置
      require("neo-tree").setup({
        filesystem = {
          window = {
            width = width,
          }
        }
      })
      -- Neo-tree 的快捷鍵映射
      vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})
      -- 為動態調整寬度設置快捷鍵
      vim.keymap.set('n', '<C-h>', function() AdjustNeoTreeWidth(-5) end, { noremap = true, silent = true })
      vim.keymap.set('n', '<C-l>', function() AdjustNeoTreeWidth(5) end, { noremap = true, silent = true })

    end
}
