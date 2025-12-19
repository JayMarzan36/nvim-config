local lush = require("lush")
local hsl = lush.hsl

-- Base colors (cool, dark, futuristic)
local bg        = hsl(220, 25, 6)    -- deep blue-black
local bg_alt    = hsl(220, 25, 9)
local fg        = hsl(210, 20, 88)   -- soft HUD white
local fg_dim    = hsl(210, 15, 60)

-- Accents
local visr_green = hsl(95, 65, 55)   -- Halo VISR green
local hud_blue   = hsl(210, 40, 55)  -- steel blue
local hud_cyan   = hsl(195, 45, 60)
local warning    = hsl(25, 70, 55)   -- amber
local danger     = hsl(0, 60, 55)

return lush(function()
  return {
    ------------------------------------------------------------------
    -- Core
    ------------------------------------------------------------------
    Normal       { fg = fg, bg = bg },
    NormalFloat  { fg = fg, bg = bg_alt },
    FloatBorder  { fg = hud_blue, bg = bg_alt },

    Cursor       { fg = bg, bg = fg },
    CursorLine   { bg = bg_alt },
    Visual       { bg = hud_blue.darken(35) },

    ------------------------------------------------------------------
    -- UI
    ------------------------------------------------------------------
    LineNr       { fg = fg_dim },
    CursorLineNr { fg = visr_green },

    StatusLine   { fg = fg, bg = bg_alt },
    StatusLineNC { fg = fg_dim, bg = bg },

    VertSplit    { fg = hud_blue.darken(30) },
    WinSeparator { fg = hud_blue.darken(30) },

    Pmenu        { fg = fg, bg = bg_alt },
    PmenuSel     { fg = bg, bg = visr_green },
    PmenuSbar    { bg = bg_alt },
    PmenuThumb   { bg = hud_blue },

    ------------------------------------------------------------------
    -- Syntax
    ------------------------------------------------------------------
    Comment      { fg = fg_dim, gui = "italic" },

    String       { fg = visr_green },
    Number       { fg = warning },
    Boolean      { fg = warning },

    Identifier   { fg = fg },
    Function     { fg = hud_blue },

    Keyword      { fg = hud_cyan },
    Operator     { fg = hud_cyan },

    Type         { fg = hud_blue.lighten(10) },

    ------------------------------------------------------------------
    -- Diagnostics (subtle, HUD-like)
    ------------------------------------------------------------------
    DiagnosticError { fg = danger },
    DiagnosticWarn  { fg = warning },
    DiagnosticInfo  { fg = hud_cyan },
    DiagnosticHint  { fg = visr_green.darken(10) },

    ------------------------------------------------------------------
    -- Search / highlights
    ------------------------------------------------------------------
    Search     { fg = bg, bg = hud_cyan },
    IncSearch  { fg = bg, bg = visr_green },

    ------------------------------------------------------------------
    -- Git
    ------------------------------------------------------------------
    DiffAdd    { fg = visr_green },
    DiffChange { fg = warning },
    DiffDelete { fg = danger },
  }
end)
