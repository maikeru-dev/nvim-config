-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
if vim.g.neovide then
  vim.o.guifont = "CaskaydiaCove Nerd Font:h12"
end

-- Use wl-copy for clipboard operations
if vim.fn.has("clipboard") then
  vim.opt.clipboard:append("unnamedplus")
  vim.opt.clipboard:append("unnamed")
  vim.g.clipboard = {
    name = "wl-copy",
    copy = {
      ["+"] = "wl-copy",
      ["*"] = "wl-copy",
    },
    paste = {
      ["+"] = "wl-paste",
      ["*"] = "wl-paste",
    },
    cache_enabled = 0,
  }
end
