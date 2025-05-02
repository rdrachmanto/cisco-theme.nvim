local theme = require("cisco.theme")

local M = {}

local pre = function()
  vim.cmd("highlight clear")
  vim.cmd("syntax reset")
  vim.g.colors_name = "cisco"
  vim.o.termguicolors = true
  vim.o.background = "dark"
end

M.setup = function()
  pre()
  theme.load_ui()
  theme.load_text()
end

return M 
