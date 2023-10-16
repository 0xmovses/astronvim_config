return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.editing-support.nvim-ts-rainbow" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity
  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  "nvim-treesitter/nvim-treesitter",
  dependencies = { "mrjones2014/nvim-ts-rainbow" },
  opts = { rainbow = { enable = true } },
{ import = "astrocommunity.pack.rust" },
}
