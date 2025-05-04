local theme = require("cisco.theme")
local default_opts = require("cisco.options")

local M = {}
local running_opts = vim.deepcopy(default_opts)

local pre = function()
  vim.cmd("highlight clear")
  vim.cmd("syntax reset")
  vim.g.colors_name = "cisco"
  vim.o.termguicolors = true
  vim.o.background = "dark"
end

M.setup = function(user_opts)
  local opts = vim.tbl_deep_extend("force", {}, default_opts, user_opts or {})
  for k, v in pairs(opts) do
    running_opts[k] = v
  end
end

M.apply = function()
  pre()
  theme.load_ui(running_opts)
  theme.load_text(running_opts)
end

return M 
