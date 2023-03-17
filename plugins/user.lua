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
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)        -- override the options using lazy.nvim
      opts.section.header.val = {   -- change the header section value
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠳⣄⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⣤⣤⣤⣤⣄⣀⣀⠀⠀⠀⠀⠀⣠⠎⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣖⡉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⢠⣄⣀⣠⣤⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠉⠻⣿⣿⣿⣿⣿⣿⣯⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀",
"⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀",
"⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀",
"⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠀⠀",
"⠠⣾⣿⢿⣿⣿⣿⣿⡿⠁⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠉⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⠉⠀⠀",
"⠀⠀⠀⢸⣿⣿⣿⡿⠑⠊⣿⣿⡿⠿⠛⠛⠙⠛⣻⣿⣿⣄⡻⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀",
"⠀⠀⠀⢸⣿⣿⣿⡗⠾⠛⠉⠉⠀⠀⠀⠀⠀⠀⠈⠉⠉⠙⠛⠛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀",
"⠀⠀⠀⢸⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⠟⠛⠻⣿⣿⣿⣿⣿⣿⡄⠀",
"⠀⠀⠀⠀⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⢶⡋⠳⢸⣿⣿⣿⣿⣿⣇⠀",
"⠀⠂⠀⠀⠘⣿⣿⣿⡀⠀⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⡗⠚⢁⣠⣾⣿⣿⣿⣿⣿⣿⠀",
"⠀⠉⠀⠀⠀⠈⣻⣿⣿⣦⣄⣀⡀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣾⣿⣿⣿⣷⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄",
"⠀⠀⠀⢺⣿⠤⠿⢿⣿⣿⣿⣿⣿⣿⣷⣶⡄⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇",
"⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⢿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇",
"⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⣀⡠⠜⠋⠁⠀⠀⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁",
"⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⡿⠛⣠⣟⣁⠤⠖⠋⠁⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀",
"⠀⠀⠀⠀⠀⠀⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⡟⢸⠿⠃⠀",
"⠀⠀⠀⠀⠀⠀⢸⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢦⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⡼⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣆⠀⠀⠀⠀⠀⠀",
        "'...and those who were seen dancing were thought to be insane",
        "by those who could not hear the music'"
      }
    end,
  },

  {
    "simrat39/rust-tools.nvim",
    config = function()
      require("rust-tools").setup({
        tools = {
          autoSetHints = true,
          hover_with_actions = true,
          inlay_hints = {
            show_parameter_hints = true,
            parameter_hints_prefix = "<- ",
            other_hints_prefix = "=> ",
          },
          runnables = {
            use_telescope = true,
          },
          debuggables = {
            use_telescope = true,
          },
          hover_actions = {
            border = {
              { "╭", "FloatBorder" },
              { "─", "FloatBorder" },
              { "╮", "FloatBorder" },
              { "│", "FloatBorder" },
              { "╯", "FloatBorder" },
              { "─", "FloatBorder" },
              { "╰", "FloatBorder" },
              { "│", "FloatBorder" },
            },
          },
        },
        server = {
          on_attach = require("lsp").common_on_attach,
          capabilities = require("lsp").common_capabilities,
        },
      })
    end,
  },
  {
    "mrjones2014/nvim-ts-rainbow"
  }


}
