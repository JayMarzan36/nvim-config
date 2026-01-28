-- Custom color scheme without Lush dependency
-- Base colors in hex (converted from HSL)
local L0_base = "#eae6e1"      -- hsl(45, 22, 93) - light cream
local L1_surface = "#4a7ba7"   -- hsl(210, 65, 45) - muted blue
local L2_support = "#1a2838"   -- hsl(220, 45, 28) - dark blue-gray
local L3_accent = "#e6c548"    -- hsl(45, 90, 55) - golden yellow
local L4_energy = "#d73a49"    -- hsl(349, 93, 54) - energetic red

-- Derived colors with approximate adjustments
local L0_base_dark3 = "#d4cfc4"  -- slightly darker base
local L0_base_dark5 = "#cac2b7"  -- more darkened base

local L1_surface_light10 = "#5a8bb7"  -- lightened surface
local L1_surface_light15 = "#6a9bc7"  -- more lightened surface
local L1_surface_light20 = "#7aabce"  -- even more lightened

local L2_support_light5 = "#242d3a"   -- slightly lighter support
local L2_support_light10 = "#2e3847"  -- more lightened
local L2_support_light15 = "#384452"  -- further lightened
local L2_support_light18 = "#3e4a5a"  -- 18% lighter
local L2_support_light20 = "#424d5f"  -- 20% lighter
local L2_support_light25 = "#4c5868"  -- 25% lighter
local L2_support_light30 = "#565f71"  -- 30% lighter
local L2_support_light35 = "#60687a"  -- 35% lighter

local L3_accent_dark5 = "#d9b83a"     -- slightly darker accent
local L3_accent_light5 = "#f0d456"    -- slightly lighter
local L3_accent_light10 = "#f5dc66"   -- more lightened
local L3_accent_light15 = "#f9e277"   -- further lightened
local L3_accent_light20 = "#fde988"   -- 20% lighter
local L3_accent_light25 = "#fff099"   -- 25% lighter
local L3_accent_light30 = "#fff7aa"   -- 30% lighter

local L4_energy_light5 = "#e04e5b"    -- slightly lighter
local L4_energy_light15 = "#ed7680"   -- more lightened
local L4_energy_light20 = "#f18a94"   -- 20% lighter
local L4_energy_light30 = "#f9adb8"   -- 30% lighter

local bg = L0_base
local fg = L2_support

local function set_hl(name, opts)
  vim.api.nvim_set_hl(0, name, opts)
end

-- Apply highlights
set_hl("Normal", { fg = fg, bg = bg })
set_hl("NormalFloat", { fg = fg, bg = bg })
set_hl("FloatBorder", { fg = bg, bg = bg })
set_hl("Cursor", { fg = bg, bg = L1_surface })
set_hl("CursorIM", { fg = bg, bg = L1_surface })
set_hl("CursorColumn", { bg = L0_base_dark3 })
set_hl("CursorLine", { bg = L0_base_dark3 })
set_hl("ColorColumn", { bg = L0_base_dark5 })
set_hl("Conceal", { fg = L2_support_light30 })
set_hl("CurSearch", { bg = L3_accent_light20 })
set_hl("lCursor", { fg = bg, bg = L1_surface })
set_hl("Directory", { fg = L3_accent })
set_hl("DiffAdd", { fg = L3_accent })
set_hl("DiffChange", { fg = L1_surface })
set_hl("DiffDelete", { fg = L4_energy })
set_hl("DiffText", { bg = L3_accent_light20 })
set_hl("EndOfBuffer", { fg = L2_support_light25 })
set_hl("TermCursor", { fg = bg, bg = L1_surface })
set_hl("TermCursorNC", { fg = fg, bg = bg })
set_hl("ErrorMsg", { fg = L4_energy, bold = true })
set_hl("VertSplit", { fg = L2_support_light10 })
set_hl("Folded", { fg = L2_support_light20, bg = L0_base_dark5 })
set_hl("FoldColumn", { fg = L2_support_light10 })
set_hl("SignColumn", { fg = L2_support_light15 })
set_hl("IncSearch", { fg = bg, bg = L3_accent })
set_hl("Substitute", { bg = L3_accent_light30 })
set_hl("LineNr", { fg = L2_support_light18 })
set_hl("LineNrAbove", { fg = L2_support_light15 })
set_hl("LineNrBelow", { fg = L2_support_light15 })
set_hl("CursorLineNr", { fg = L3_accent, bold = true })
set_hl("CursorLineFold", { fg = L2_support_light10 })
set_hl("CursorLineSign", { fg = L2_support_light10 })
set_hl("MatchParen", { fg = bg, bg = L4_energy_light20, bold = true })
set_hl("ModeMsg", { fg = L3_accent, bold = true })
set_hl("MsgArea", { fg = fg, bg = bg })
set_hl("MsgSeparator", { fg = L2_support_light15 })
set_hl("MoreMsg", { fg = L3_accent })
set_hl("NonText", { fg = L2_support_light20 })
set_hl("NormalNC", { fg = fg, bg = bg })
set_hl("Pmenu", { fg = L0_base_dark5, bg = L1_surface_light10 })
set_hl("PmenuSel", { fg = bg, bg = L3_accent })
set_hl("PmenuKind", { fg = L2_support })
set_hl("PmenuKindSel", { fg = L0_base, bg = L3_accent })
set_hl("PmenuExtra", { fg = L2_support_light10 })
set_hl("PmenuExtraSel", { fg = L0_base, bg = L3_accent_light10 })
set_hl("PmenuSbar", { bg = L0_base_dark5 })
set_hl("PmenuThumb", { bg = L1_surface })
set_hl("Question", { fg = L3_accent })
set_hl("QuickFixLine", { bg = L0_base_dark5, fg = L3_accent })
set_hl("Search", { fg = bg, bg = L4_energy })
set_hl("SpecialKey", { fg = L2_support_light30 })
set_hl("SpellBad", { sp = L4_energy, undercurl = true })
set_hl("SpellCap", { sp = L3_accent, undercurl = true })
set_hl("SpellLocal", { sp = L2_support_light25, undercurl = true })
set_hl("SpellRare", { sp = L1_surface, undercurl = true })
set_hl("StatusLine", { fg = L0_base_dark5, bg = L1_surface })
set_hl("StatusLineNC", { fg = L2_support, bg = bg })
set_hl("TabLine", { fg = L2_support, bg = bg })
set_hl("TabLineFill", { fg = fg, bg = L0_base_dark5 })
set_hl("TabLineSel", { fg = bg, bg = L3_accent })
set_hl("Title", { fg = L3_accent, bold = true })
set_hl("Visual", { bg = L3_accent_light25 })
set_hl("VisualNOS", { bg = L3_accent_light15 })
set_hl("WarningMsg", { fg = L3_accent, bold = true })
set_hl("Whitespace", { fg = L2_support_light20 })
set_hl("Winseparator", { fg = L2_support_light10 })
set_hl("WildMenu", { fg = bg, bg = L3_accent })
set_hl("WinBar", { fg = fg, bg = bg })
set_hl("WinBarNC", { fg = L2_support_light15, bg = bg })

------------------------------------------------------------------
-- Syntax
------------------------------------------------------------------
set_hl("Comment", { fg = L2_support_light35, italic = true })
set_hl("Constant", { fg = L1_surface_light15 })
set_hl("String", { fg = L1_surface_light15 })
set_hl("Character", { fg = L1_surface_light15 })
set_hl("Number", { fg = L1_surface_light15 })
set_hl("Boolean", { fg = L1_surface_light15 })
set_hl("Float", { fg = L1_surface_light15 })
set_hl("Identifier", { fg = L2_support_light5 })
set_hl("Function", { fg = L3_accent })
set_hl("Statement", { fg = L3_accent_dark5 })
set_hl("Conditional", { fg = L3_accent })
set_hl("Repeat", { fg = L3_accent_dark5 })
set_hl("Label", { fg = L4_energy })
set_hl("Operator", { fg = L2_support_light5 })
set_hl("Keyword", { fg = L3_accent })
set_hl("Exception", { fg = L4_energy })
set_hl("PreProc", { fg = L3_accent })
set_hl("Include", { fg = L3_accent })
set_hl("Define", { fg = L3_accent })
set_hl("Macro", { fg = L3_accent })
set_hl("PreCondit", { fg = L3_accent })
set_hl("Type", { fg = L4_energy_light5 })
set_hl("StorageClass", { fg = L4_energy })
set_hl("Structure", { fg = L4_energy })
set_hl("Typedef", { fg = L4_energy })
set_hl("Special", { fg = L2_support })
set_hl("SpecialChar", { fg = L2_support })
set_hl("Tag", { fg = L3_accent })
set_hl("Delimiter", { fg = L2_support_light10 })
set_hl("SpecialComment", { fg = L2_support_light30 })
set_hl("Debug", { fg = L4_energy, bold = true })
set_hl("Underlined", { underline = true })
set_hl("Ignore", { fg = bg })
set_hl("Error", { fg = L4_energy, bold = true })
set_hl("Todo", { fg = L3_accent, bold = true })

------------------------------------------------------------------
-- LSP / Diagnostics
------------------------------------------------------------------
set_hl("LspReferenceText", { bg = L3_accent_light15 })
set_hl("LspReferenceRead", { bg = L3_accent_light10 })
set_hl("LspReferenceWrite", { bg = L3_accent_light5 })
set_hl("LspCodeLens", { fg = L2_support_light20 })
set_hl("LspCodeLensSeparator", { fg = L2_support_light25 })
set_hl("LspSignatureActiveParameter", { fg = L3_accent, bold = true })

set_hl("DiagnosticError", { fg = L4_energy })
set_hl("DiagnosticWarn", { fg = L3_accent })
set_hl("DiagnosticInfo", { fg = L1_surface })
set_hl("DiagnosticHint", { fg = L2_support_light25 })
set_hl("DiagnosticOk", { fg = L3_accent_light15 })
set_hl("DiagnosticVirtualTextError", { fg = L4_energy })
set_hl("DiagnosticVirtualTextWarn", { fg = L3_accent })
set_hl("DiagnosticVirtualTextInfo", { fg = L1_surface })
set_hl("DiagnosticVirtualTextHint", { fg = L2_support_light25 })
set_hl("DiagnosticVirtualTextOk", { fg = L3_accent_light15 })
set_hl("DiagnosticUnderlineError", { sp = L4_energy, undercurl = true })
set_hl("DiagnosticUnderlineWarn", { sp = L3_accent, undercurl = true })
set_hl("DiagnosticUnderlineInfo", { sp = L1_surface, undercurl = true })
set_hl("DiagnosticUnderlineHint", { sp = L2_support_light25, undercurl = true })
set_hl("DiagnosticUnderlineOk", { sp = L3_accent_light15, undercurl = true })
set_hl("DiagnosticFloatingError", { fg = L4_energy })
set_hl("DiagnosticFloatingWarn", { fg = L3_accent })
set_hl("DiagnosticFloatingInfo", { fg = L1_surface })
set_hl("DiagnosticFloatingHint", { fg = L2_support_light25 })
set_hl("DiagnosticFloatingOk", { fg = L3_accent_light15 })
set_hl("DiagnosticSignError", { fg = L4_energy })
set_hl("DiagnosticSignWarn", { fg = L3_accent })
set_hl("DiagnosticSignInfo", { fg = L1_surface })
set_hl("DiagnosticSignHint", { fg = L2_support_light25 })
set_hl("DiagnosticSignOk", { fg = L3_accent_light15 })

------------------------------------------------------------------
-- Tree-Sitter
------------------------------------------------------------------
set_hl("@text.literal", { fg = L2_support_light25 })
set_hl("@text.reference", { fg = L2_support })
set_hl("@text.title", { fg = L3_accent, bold = true })
set_hl("@text.uri", { fg = L3_accent, underline = true })
set_hl("@text.underline", { fg = L3_accent, underline = true })
set_hl("@text.todo", { fg = L3_accent, bold = true })
set_hl("@comment", { fg = L2_support_light35, italic = true })
set_hl("@punctuation", { fg = L2_support_light10 })
set_hl("@constant", { fg = L1_surface_light15 })
set_hl("@constant.builtin", { fg = L2_support })
set_hl("@constant.macro", { fg = L3_accent })
set_hl("@define", { fg = L3_accent })
set_hl("@macro", { fg = L3_accent })
set_hl("@string", { fg = L1_surface_light15 })
set_hl("@string.escape", { fg = L2_support })
set_hl("@string.special", { fg = L2_support })
set_hl("@character", { fg = L1_surface_light15 })
set_hl("@character.special", { fg = L2_support })
set_hl("@number", { fg = L1_surface_light15 })
set_hl("@boolean", { fg = L1_surface_light15 })
set_hl("@float", { fg = L1_surface_light15 })
set_hl("@function", { fg = L3_accent })
set_hl("@function.builtin", { fg = L2_support })
set_hl("@function.macro", { fg = L3_accent })
set_hl("@parameter", { fg = L2_support_light5 })
set_hl("@method", { fg = L3_accent })
set_hl("@field", { fg = L2_support_light5 })
set_hl("@property", { fg = L2_support_light5 })
set_hl("@constructor", { fg = L3_accent })
set_hl("@conditional", { fg = L3_accent })
set_hl("@repeat", { fg = L3_accent_dark5 })
set_hl("@label", { fg = L4_energy })
set_hl("@operator", { fg = L2_support_light5 })
set_hl("@keyword", { fg = L3_accent })
set_hl("@exception", { fg = L4_energy })
set_hl("@variable", { fg = L2_support })
set_hl("@type", { fg = L4_energy_light5 })
set_hl("@type.definition", { fg = L4_energy })
set_hl("@storageclass", { fg = L4_energy })
set_hl("@structure", { fg = L4_energy })
set_hl("@namespace", { fg = L2_support })
set_hl("@include", { fg = L3_accent })
set_hl("@preproc", { fg = L3_accent })
set_hl("@debug", { fg = L4_energy })
set_hl("@tag", { fg = L3_accent })

------------------------------------------------------------------
-- Neo-tree
------------------------------------------------------------------
set_hl("NeoTreeDirectoryName", { fg = L2_support })
set_hl("NeoTreeDirectoryIcon", { fg = L2_support })
set_hl("NeoTreeOpenedFile", { fg = L2_support_light5 })
set_hl("NeoTreeFileName", { fg = L2_support_light5 })
set_hl("NeoTreeFileIcon", { fg = L2_support_light10 })
set_hl("NeoTreeRootName", { fg = L3_accent, bold = true })
set_hl("NeoTreeGitAdded", { fg = L3_accent })
set_hl("NeoTreeGitModified", { fg = L1_surface })
set_hl("NeoTreeGitDeleted", { fg = L4_energy })

