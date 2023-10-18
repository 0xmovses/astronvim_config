return {
  -- Configure AstroNvim updates
  updater = {
    remote = "origin",     -- remote to use
    channel = "stable",    -- "stable" or "nightly"
    version = "latest",    -- "latest", tag name, or regex search like "v1.*" to only do updates before v2 (STABLE ONLY)
    branch = "nightly",    -- branch name (NIGHTLY ONLY)
    commit = nil,          -- commit hash (NIGHTLY ONLY)
    pin_plugins = nil,     -- nil, true, false (nil will pin plugins on stable only)
    skip_prompts = false,  -- skip prompts about breaking changes
    show_changelog = true, -- show the changelog after performing an update
    auto_quit = false,     -- automatically quit the current session after a successful update
    remotes = {            -- easily add new remotes to track
      --   ["remote_name"] = "https://remote_url.come/repo.git", -- full remote url
      --   ["remote2"] = "github_user/repo", -- GitHub user/repo shortcut,
      --   ["remote3"] = "github_user", -- GitHub user assume AstroNvim fork
    },
  },
  -- Set colorscheme to use
  -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
  diagnostics = {
    virtual_text = true,
    underline = true,
  },
  colorscheme = "gruvbox-material",
  lsp = {
    config = {
      rust_analyzer = {
        settings = {
          ["rust-analyzer"] = {
            cargo = {
              extraEnv = { CARGO_PROFILE_RUST_ANALYZER_INHERITS = 'dev', },
              extraArgs = { "--profile", "rust-analyzer", },
              features = { "runtime-benchmarks", "try-runtime" }
            },
            diagnostics = {
              disabled = { "unresolved-imports", "unresolved-proc-macro" },
            },
            rustfmt = {
              extraArgs = { "+nightly" },
            },
            server = {
                extraEnv = {
                  CARGO_TARGET_DIR = "target/.rust-analyzer",
		              -- Don't lint the runtime.
		              SKIP_WASM_BUILD = 1,
		              CHALK_OVERFLOW_DEPTH = "3000",
		              CHALK_SOLVER_MAX_SIZE = "1500"
              }
            },
            runnables = {
              "--target-dir",
              "target/.rust-analyzer",
            },
            check = {
              extraArgs = { "--target-dir", "target/.rust-analyzer" },
              overrideCommand = {
                "cargo",
		            "check",
		            "--quiet",
		            "--message-format=json",
		            "--target-dir",
		            "target/.rust-analyzer"
		          },
            },
          },
        },
      },
    },
    setup_handlers = {},
    servers = { "rust_analyzer" }
  },
  -- Configure require("lazy").setup() options
  lazy = {
    defaults = { lazy = true },
    performance = {
      rtp = {
        -- customize default disabled vim plugins
        disabled_plugins = { "tohtml", "gzip", "matchit", "zipPlugin", "netrwPlugin", "tarPlugin", "matchparen" },
      },
    },
  },
  -- This function is run last and is a good place to configuring
  -- augroups/autocommands and custom filetypes also this just pure lua so
  -- anything that doesn't fit in the normal config locations above can go here
  polish = function()
    -- Set up custom filetypes
    -- vim.filetype.add {
    --   extension = {
    --     foo = "fooscript",
    --   },
    --   filename = {
    --     ["Foofile"] = "fooscript",
    --   },
    --   pattern = {
    --     ["~/%.config/foo/.*"] = "fooscript",
    --   },
    -- }
  end,
}
