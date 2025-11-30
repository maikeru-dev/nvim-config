return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = "right"
      }
    }
  },
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        exclude = {
          ".git",
          "node_modules",
          "target",
          "out"
        }
      }
    }
  },
  {
    "folke/todo-comments.nvim",
    opts = {
      virtual_test = false,
    }
  }
}
