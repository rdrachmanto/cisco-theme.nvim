local theme = {}

local set = vim.api.nvim_set_hl
local c = require("cisco.colors")

theme.load_ui = function(opts)
  
  if opts.mode == "dark" then
    set(0, "Normal", { fg = c.light2, bg = c.black1 })
    set(0, "CursorLine", { bg = c.black4 })
    set(0, "StatusLine", { fg = c.black5, bg = c.black1 })
    set(0, "TabLine", { fg = c.black5, bg = c.black4 })
    set(0, "TabLineFill", { fg = c.black5, bg = c.black1 })
    set(0, "TabLineSel", { fg = c.black1, bg = c.orange3 })
    set(0, "WinBar", { fg = c.black5, bg = c.black1 })
    set(0, "WinBarNC", { fg = c.black5, bg = c.black1 })
    set(0, "StatusLine", { fg = c.black5, bg = c.black1 })
    set(0, "MsgArea", { fg = c.black5 })
  elseif opts.mode == "light" then
    set(0, "Normal", { fg = c.black1, bg = c.light1 })
    set(0, "CursorLine", { bg = c.light2 })
    set(0, "StatusLine", { fg = c.black5, bg = c.black1 })
  end

  if opts.contrast.floating_windows == true then
    set(0, "NormalFloat", { fg = c.light2, bg = c.black2 })
    set(0, "FloatBorder", { fg = c.black4, bg = c.black2 })
    set(0, "FloatTitle", { bg = c.black2 })
    set(0, "Pmenu", { fg = c.light2, bg = c.black2 })
    set(0, "PmenuSel", { fg = c.black2, bg = c.orange2 })
  else
    set(0, "NormalFloat", { fg = c.light2, bg = c.black1 })
    set(0, "FloatBorder", { fg = c.black2, bg = "None" })
    set(0, "Pmenu", { fg = c.light2, bg = c.black1 })
    set(0, "PmenuSel", { fg = c.black1, bg = c.orange2 })
  end

  set(0, "WinSeparator", { fg = c.black4 })
  set(0, "CursorLineNr", { fg = c.orange2 })
end

theme.load_text = function(opts)
  if opts.mode == "dark" then
    set(0, "Comment", { fg = c.black5, italic = opts.italic_comments  })
    set(0, "Statement", { fg = c.pink, italic = opts.italic_keywords })

    set(0, "Type", { fg = c.blue5 })
    set(0, "@string.escape", { fg = c.pink })
    set(0, "Number", { fg = c.light1 })
    set(0, "@string.regexp", { fg = c.black6 })
    set(0, "String", { fg = c.orange3 })
    set(0, "Special", { fg = c.blue5 })
    set(0, "WarningMsg", { fg = c.orange1 })
    set(0, "Constant", { fg = c.blue5 })
    set(0, "Operator", { fg = c.pink })
    set(0, "Delimiter", { fg = c.light2 })
    set(0, "@markup", { fg = c.black5 })
    set(0, "@punctuation", { fg = c.light2 })
    set(0, "PreProc", { fg = c.orange4 })
    set(0, "Identifier", { fg = c.light2 })
    set(0, "@variable", { fg = c.light2 })
    set(0, "Function", { fg = c.purple1 })
    set(0, "@property", { fg = c.light2 })
  end

end

theme.load_plugins = function(opts)
  set(0, "BlinkCmpMenuBorder", { link = "FloatBorder" })

  set(0, "FzfLuaNormal", { link = "NormalFloat" })
  set(0, "FzfLuaCursorLine", { link = "NormalFloat" })
  set(0, "FzfLuaFzfCursorLine", { link = "NormalFloat" })
  set(0, "FzfLuaFzfScrollbar", { link = "NormalFloat" })
  set(0, "FzfLuaFzfPointer", { link = "NormalFloat" })
  set(0, "FzfLuaFzfGutter", { link = "NormalFloat" })
  set(0, "FzfLuaBorder", { link = "FloatBorder" })

  set(0, "netrwDir", { fg = c.pink })
  set(0, "netrwTreeBar", { fg = c.black4 })
  set(0, "netrwClassify", { fg = c.orange4 })
  set(0, "netrwMarkFile", { bg = c.black4, bold = true })
end

return theme
