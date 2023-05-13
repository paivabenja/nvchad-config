-- custom/configs/null-ls.lua

local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions

local sources = {
  formatting.stylua,
  lint.shellcheck,
  code_actions.eslint,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
