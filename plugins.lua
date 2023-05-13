local plugins = {
  -- In order to modify the `lspconfig` configuration:
  {
    "neovim/nvim-lspconfig",

    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        'lua',
        'typescript',
        'tsx',
        'json',
        'javascript'
      }
    }
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "eslint-lsp",
        "typescript-language-server"
      },
    },
  },

  {
    "alexghergh/nvim-tmux-navigation",
    opts = {
      disable_when_zoomed = true, -- defaults to false
      keybindings = {
        left = "<M-h>",
        down = "<M-j>",
        up = "<M-k>",
        right = "<M-l>",
        last_active = "<M-\\>",
        next = "<M-Space>",
      }
    },
    lazy = false,
  }


}

return plugins
