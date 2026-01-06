local lush = require("lush")
local hsl = lush.hsl


-- colors
local yellow = hsl(61,100,54)
local blue = hsl(187,100,40)
local red = hsl(0,72,56)
local white = hsl(270, 100, 100)
local dark_blue = hsl(213, 100, 40)



-- Base colors (cool, dark, futuristic)
local bg        = blue
local bg_alt    = hsl(187,100,40)
local fg        = yellow
local fg_dim    = hsl(61,100,40)



return lush(function()
  return {
    ------------------------------------------------------------------
    -- Core
    ------------------------------------------------------------------
    Normal       { fg = fg, bg = bg },
    NormalFloat  { fg = fg, bg = bg_alt },
    FloatBorder  { fg = blue, bg = bg_alt },

    Cursor       { fg = bg, bg = fg },
    CursorLine   { bg = bg_alt },
    Visual       { bg = dark_blue },

    ------------------------------------------------------------------
    -- UI
    ------------------------------------------------------------------
    LineNr       { fg = fg_dim },
    CursorLineNr { fg = white },

    StatusLine   { fg = fg, bg = dark_blue },
    StatusLineNC { fg = fg_dim, bg = bg },

    VertSplit    { fg = dark_blue },
    WinSeparator { fg = dark_blue },

    Pmenu        { fg = fg, bg = dark_blue },
    PmenuSel     { fg = bg, bg = dark_blue },
    PmenuSbar    { bg = bg_alt },
    PmenuThumb   { bg = blue },

    ------------------------------------------------------------------
    -- Syntax
    ------------------------------------------------------------------
    Comment      { fg = fg_dim, gui = "italic" },

    String       { fg = dark_blue },
    Number       { fg = red },
    Boolean      { fg = red },

    Identifier   { fg = fg },
    Function     { fg = dark_blue },

    Keyword      { fg = yellow },
    Operator     { fg = yellow },

    Type         { fg = red },

    ------------------------------------------------------------------
    -- Diagnostics
    ------------------------------------------------------------------
    DiagnosticError { fg = red },
    DiagnosticWarn  { fg = red },
    DiagnosticInfo  { fg = red },
    DiagnosticHint  { fg = red },

    ------------------------------------------------------------------
    -- Search / highlights
    ------------------------------------------------------------------
    Search     { fg = bg, bg = yellow },
    IncSearch  { fg = bg, bg = yellow },

    ------------------------------------------------------------------
    -- Git
    ------------------------------------------------------------------
    DiffAdd    { fg = yellow },
    DiffChange { fg = red },
    DiffDelete { fg = red },
  }
end)
