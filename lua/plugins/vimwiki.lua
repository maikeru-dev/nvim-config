return {
  {
    "vimwiki/vimwiki",
    event = "BufEnter *.md",
    keys = { "<leader>ww", "<leader>wt" },
    init = function()
      vim.g.vimwiki_folding = ""
      vim.g.vimwiki_list = {
        {
          path = "~/Documents/notes/",
          path_html = "~/Documents/notes_html/",
          syntax = "markdown",
          custom_wiki2html = "~/.config/nvim/scripts/customwiki2html.sh",
          ext = ".md",
        },
      }
      vim.g.vimwiki_ext2syntax = {
        [".md"] = "markdown",
        [".markdown"] = "markdown",
        [".mdown"] = "markdown",
      }
    end,
  },
}
