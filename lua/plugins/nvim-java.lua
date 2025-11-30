-- https://github.com/AstroNvim/astrocommunity/blob/main/lua/astrocommunity/lsp/nvim-java/init.lua
return {
  "nvim-java/nvim-java",
  lazy = true,
  opts = {},
  specs = {
    { "mfussenegger/nvim-jdtls", optional = true, enabled = false },
    {
      "AstroNvim/astrolsp",
      optional = true,
      ---@type AstroLSPOpts
      opts = {
        servers = { "jdtls" },
        handlers = {
          jdtls = function(server, opts)
            require("lazy").load { plugins = { "nvim-java" } }
            require("lspconfig")[server].setup { opts,
            settings = {
                -- TODO comments fuck off
                ["java.settings.url"] = '/home/maikeru/.config/nvim/java/settings.perf',
              } }
          end,
        },
      },
    },
  },
}
