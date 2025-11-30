" blackred.vim - Minimal black background, red foreground colorscheme
" Optimized for terminal use with plugin support

if exists("g:colors_name")
  unlet g:colors_name
endif
let g:colors_name = "blackred"

if exists("syntax_on")
  syntax reset
endif

set background=dark

" ============================================================================
" Base Colors
" ============================================================================

" Normal text
hi Normal guifg=#ff5555 guibg=#000000 ctermfg=1 ctermbg=0
hi NormalNC guifg=#ff5555 guibg=#000000 ctermfg=1 ctermbg=0

" Comments
hi Comment guifg=#aa3333 gui=italic ctermfg=1 cterm=italic

" Line numbers and cursor
hi LineNr guifg=#880000 guibg=#000000 ctermfg=1 ctermbg=0
hi CursorLineNr guifg=#ff3333 guibg=#111111 ctermfg=1 ctermbg=0
hi CursorLine guibg=#111111 ctermbg=0
hi CursorColumn guibg=#111111 ctermbg=0

" ============================================================================
" UI Elements
" ============================================================================

" Status line
hi StatusLine guifg=#ffdddd guibg=#220000 ctermfg=7 ctermbg=1
hi StatusLineNC guifg=#880000 guibg=#000000 ctermfg=1 ctermbg=0

" Visual selection
hi Visual guibg=#330000 ctermbg=0

" Search and incremental search
hi Search guifg=#000000 guibg=#ff3333 ctermfg=0 ctermbg=1
hi IncSearch guifg=#000000 guibg=#ff3333 ctermfg=0 ctermbg=1

" Popup menu
hi Pmenu guifg=#ff5555 guibg=#1a1a1a ctermfg=1 ctermbg=8
hi PmenuSel guifg=#000000 guibg=#ff5555 ctermfg=0 ctermbg=1
hi PmenuBorder guifg=#660000 ctermbg=0 ctermfg=1

" Cursor
hi Cursor guifg=#000000 guibg=#ff5555 ctermfg=0 ctermbg=1
hi iCursor guifg=#000000 guibg=#ff5555 ctermfg=0 ctermbg=1

" ============================================================================
" Diagnostics
" ============================================================================

hi DiagnosticError guifg=#ff0000 ctermfg=1
hi DiagnosticWarn guifg=#ffaa00 ctermfg=3
hi DiagnosticInfo guifg=#00aaff ctermfg=6
hi DiagnosticHint guifg=#00ff00 ctermfg=2
hi DiagnosticOk guifg=#00ff00 ctermfg=2

hi DiagnosticSignError guifg=#ff0000 ctermfg=1
hi DiagnosticSignWarn guifg=#ffaa00 ctermfg=3
hi DiagnosticSignInfo guifg=#00aaff ctermfg=6
hi DiagnosticSignHint guifg=#00ff00 ctermfg=2
hi DiagnosticSignOk guifg=#00ff00 ctermfg=2

hi DiagnosticUnderlineError guifg=#ff0000 gui=underline ctermfg=1 cterm=underline
hi DiagnosticUnderlineWarn guifg=#ffaa00 gui=underline ctermfg=3 cterm=underline
hi DiagnosticUnderlineInfo guifg=#00aaff gui=underline ctermfg=6 cterm=underline
hi DiagnosticUnderlineHint guifg=#00ff00 gui=underline ctermfg=2 cterm=underline

hi Error guifg=#ff0000 guibg=#000000 ctermfg=1 ctermbg=0
hi Warning guifg=#ffaa00 guibg=#000000 ctermfg=3 ctermbg=0
hi WarningMsg guifg=#ffaa00 guibg=#000000 ctermfg=3 ctermbg=0
hi ErrorMsg guifg=#ff0000 guibg=#000000 ctermfg=1 ctermbg=0

" ============================================================================
" Syntax Highlighting
" ============================================================================

" Strings
hi String guifg=#ffaa00 ctermfg=3
hi Character guifg=#ffaa00 ctermfg=3

" Numbers
hi Number guifg=#00ff00 ctermfg=2
hi Float guifg=#00ff00 ctermfg=2

" Keywords
hi Keyword guifg=#ff5555 ctermfg=1
hi Statement guifg=#ff5555 ctermfg=1

" Functions
hi Function guifg=#00aaff ctermfg=6
hi Identifier guifg=#ff5555 ctermfg=1

" Types
hi Type guifg=#ffff00 ctermfg=3
hi Structure guifg=#ffff00 ctermfg=3

" Operators
hi Operator guifg=#ff5555 ctermfg=1

" Preprocessor
hi PreProc guifg=#ffaa00 ctermfg=3

" Diff
hi DiffAdd guifg=#00ff00 guibg=#001a00 ctermfg=2 ctermbg=0
hi DiffChange guifg=#ffff00 guibg=#1a1a00 ctermfg=3 ctermbg=0
hi DiffDelete guifg=#ff0000 guibg=#1a0000 ctermfg=1 ctermbg=0
hi DiffText guifg=#000000 guibg=#ffff00 ctermfg=0 ctermbg=3

" ============================================================================
" Treesitter
" ============================================================================

hi link @keyword Keyword
hi link @string String
hi link @number Number
hi link @function Function
hi link @type Type
hi link @variable Identifier
hi link @comment Comment
hi link @constant Keyword

" ============================================================================
" Git Signs
" ============================================================================

hi GitSignsAdd guifg=#00ff00 ctermfg=2
hi GitSignsChange guifg=#ffff00 ctermfg=3
hi GitSignsDelete guifg=#ff0000 ctermfg=1

" ============================================================================
" LSP
" ============================================================================

hi link LspReferenceText IncSearch
hi link LspReferenceRead IncSearch
hi link LspReferenceWrite IncSearch

" ============================================================================
" Todo Comments
" ============================================================================

hi TodoFgTODO guifg=#ffaa00 ctermfg=3
hi TodoFgFIXME guifg=#ff0000 ctermfg=1
hi TodoFgHACK guifg=#00aaff ctermfg=6
hi TodoFgNOTE guifg=#00ff00 ctermfg=2

" ============================================================================
" Telescope
" ============================================================================

hi link TelescopeSelection IncSearch
hi link TelescopeNormal Normal
hi link TelescopeBorder LineNr

" ============================================================================
" NvimTree
" ============================================================================

hi NvimTreeNormal guifg=#ff5555 guibg=#000000 ctermfg=1 ctermbg=0
hi NvimTreeFolderName guifg=#ffaa00 ctermfg=3
hi NvimTreeOpenedFolderName guifg=#ff5555 gui=bold ctermfg=1 cterm=bold
hi NvimTreeExecFile guifg=#00ff00 ctermfg=2
hi NvimTreeSpecialFile guifg=#00aaff ctermfg=6

" End of colorscheme
