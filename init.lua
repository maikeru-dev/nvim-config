-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
if vim.g.neovide then
  vim.o.guifont = "CaskaydiaCove Nerd Font:h12"
end

vim.g.clipboard = {
  name = "win32yank-wsl",
  copy = {
    ["+"] = { "win32yank.exe", "-i", "--crlf" },
    ["*"] = { "win32yank.exe", "-i", "--crlf" },
  },
  paste = {
    ["+"] = { "win32yank.exe", "-o", "--lf" },
    ["*"] = { "win32yank.exe", "-o", "--lf" },
  },
  cache_enabled = false,
}
