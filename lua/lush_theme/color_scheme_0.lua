local lush = require("lush")
local hsl = lush.hsl


-- colors
local yellow = hsl(61,100,54)
local blue = hsl(187,100,40)
local red = hsl(6,100,60)
local white = hsl(270, 100, 100)
local dark_blue = hsl(213, 100, 40)
local bg        = dark_blue
local fg        = blue



return lush(function()
  return {
    ------------------------------------------------------------------
    -- Core
    ------------------------------------------------------------------
    Normal       { fg = fg, bg = bg },
    NormalFloat  { fg = fg, bg = bg },
    FloatBorder  { fg = bg, bg = bg },

    Cursor       { fg = bg, bg = fg },
    CursorLine   { bg = bg },
    Visual       { bg = red },

    ------------------------------------------------------------------
    -- UI
    ------------------------------------------------------------------
    LineNr       { fg = fg },
    CursorLineNr { fg = white },

    StatusLine   { fg = fg, bg = dark_blue },
    StatusLineNC { fg = fg, bg = bg },

    VertSplit    { fg = yellow },
    WinSeparator { fg = yellow },

    Pmenu        { fg = fg, bg = dark_blue },
    PmenuSel     { fg = bg, bg = dark_blue },
    PmenuSbar    { bg = bg },
    PmenuThumb   { bg = bg },

    ------------------------------------------------------------------
    -- Syntax
    ------------------------------------------------------------------
    Comment      { fg = blue, gui = "italic" },

    String       { fg = blue },
    Number       { fg = blue },
    Boolean      { fg = blue },

    Identifier   { fg = red },
    Function     { fg = yellow },

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
    Search     { fg = red, bg = fg },
    IncSearch  { fg = bg, bg = fg },

    ------------------------------------------------------------------
    -- Git
    ------------------------------------------------------------------
    DiffAdd    { fg = yellow },
    DiffChange { fg = red },
    DiffDelete { fg = red },
  }
end)
