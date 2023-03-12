return {
  {
    "EdenEast/nightfox.nvim",
    as = "nightfox",
  },
  {
    "catppuccin/nvim",
    as = "catppuccin"
  },
  {
    "luisiacc/gruvbox-baby",
    as = "gruvbox-baby",
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        panel = {
          auto_refresh = false,
          keymap = {
            accept = "<C-e>",
            jump_prev = "[[",
            jump_next = "]]",
            refresh = "gr",
            open = "<M-CR>",
          },
        },
        suggestion = {
          auto_trigger = true,
          keymap = {
            accept = "<C-e>",
            prev = "<M-[>",
            next = "<M-]>",
            dismiss = "<C-]>",
          },
        },
      })
    end,
  },
}
