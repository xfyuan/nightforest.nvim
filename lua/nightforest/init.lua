local colors = require('nightforest.colors')
local config = require('nightforest.config')
local nightforest = {}

local function set_terminal_colors()
  vim.g.terminal_color_0 = colors.bg3
  vim.g.terminal_color_1 = colors.red
  vim.g.terminal_color_2 = colors.green
  vim.g.terminal_color_3 = colors.yellow
  vim.g.terminal_color_4 = colors.blue
  vim.g.terminal_color_5 = colors.purple
  vim.g.terminal_color_6 = colors.aqua
  vim.g.terminal_color_7 = colors.fg
  vim.g.terminal_color_8 = colors.bg3
  vim.g.terminal_color_9 = colors.red
  vim.g.terminal_color_10 = colors.green
  vim.g.terminal_color_11 = colors.yellow
  vim.g.terminal_color_12 = colors.blue
  vim.g.terminal_color_13 = colors.purple
  vim.g.terminal_color_14 = colors.aqua
  vim.g.terminal_color_15 = colors.fg
  vim.g.terminal_color_background = colors.bg
  vim.g.terminal_color_foreground = colors.fg
end

local function set_groups()
  local groups = {
    -- ===================== Syntax ==================== {{{
    Comment = { fg = colors.grey1 }, -- any comment
    Constant = { fg = colors.aqua }, -- (preferred) any constant
    CursorLineConceal = { fg = colors.bg4, bg = colors.bg1 },
    Delimiter = { fg = colors.fg }, -- character that needs attention
    Error = { fg = colors.white, bg = colors.red }, -- (preferred) any erroneous construct
    Exception = { fg = colors.red }, -- try, catch, throw
    Function = { fg = colors.green }, -- function name (also: methods for classes)
    Identifier = { fg = colors.yellow }, -- (preferred) any variable name
    Ignore = { fg = colors.fg },
    Operator = { fg = colors.orange }, -- "sizeof", "+", "*", etc.
    PreProc = { fg = colors.red }, -- (preferred) generic Preprocessor
    Special = { fg = colors.fg }, -- (preferred) any special symbol
    Statement = { fg = colors.red }, -- (preferred) any statement
    String = { fg = colors.green }, -- a string constant: "this is a string"
    Structure = { fg = colors.fg }, -- struct, union, enum, etc.
    Todo = { fg = colors.red }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    Type = { fg = colors.yellow }, -- (preferred) int, long, char, etc.
    Underlined = { fg = colors.blue, underline = true }, -- (preferred) text that stands out, HTML links
    -- Markdown
    markdownCode = { fg = colors.green },
    -- }}}


    -- ===================== Editor ==================== {{{
    Normal = { fg = colors.fg, bg = colors.bg }, -- normal text
    NormalFloat = { bg = colors.bg }, -- Normal text in floating windows.
    FloatBorder = { fg = colors.grey1 },
    FloatTitle = { fg = colors.fg },
    Conceal = { fg = colors.grey1 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    ColorColumn = { bg = colors.bg1 }, -- used for the columns set with 'colorcolumn'
    CursorColumn = { bg = colors.bg1 }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine = { bg = colors.bg1 }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    CursorLineNr = { fg = colors.yellow, bg = colors.bg1 }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    LineNr = { fg = colors.bg4 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    Directory = { fg = colors.green }, -- directory names (and other special names in listings)
    ErrorMsg = { fg = colors.red }, -- error messages on the command line
    VertSplit = { fg = colors.bg4, bg = colors.bg }, -- the column separating vertically split windows
    Folded = { fg = colors.grey1, bg = colors.bg1 }, -- line used for closed folds
    FoldColumn = { bg = colors.bg }, -- 'foldcolumn'
    SignColumn = { bg = colors.bg }, -- column where |signs| are displayed

    MatchParen = { sp = colors.green, underline = true }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg = { fg = colors.green }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MoreMsg = { fg = colors.green }, -- |more-prompt|
    NonText = { fg = colors.bg4 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Pmenu = { fg = colors.fg, bg = colors.bg2 }, -- Popup menu: normal item.
    PmenuSel = { fg = colors.fg, bg = colors.bg2, reverse = true }, -- Popup menu: selected item.
    Question = { fg = colors.green }, -- |hit-enter| prompt and yes/no questions
    Search = { fg = colors.bg, bg = colors.green }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch = { fg = colors.bg, bg = colors.red }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    SpecialKey = { fg = colors.bg2 }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellCap = { sp = colors.blue, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal = { sp = colors.red, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellBad = { sp = colors.red, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellRare = { sp = colors.purple, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine = { fg = colors.fg, bg = colors.bg1 }, -- status line of current window
    StatusLineNC = { fg = colors.grey1, bg = colors.bg1 }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    WildMenu = { fg = colors.fg, bg = colors.red }, -- current match in 'wildmenu' completion
    TabLine = { fg = colors.grey1, bg = colors.bg3 }, -- tab pages line, not active tab page label
    TabLineFill = { fg = colors.fg, bg = colors.bg4 }, -- tab pages line, where there are no labels
    TabLineSel = { fg = colors.fg, bg = colors.bg }, -- tab pages line, active tab page label
    Title = { fg = colors.red }, -- titles for output from ":set all", ":autocmd" etc.
    Visual = { bg = colors.bg2 }, -- Visual mode selection
    WarningMsg = { fg = colors.yellow }, -- warning messages
    qfLineNr = { fg = colors.red },

    DiffAdd = { bg = colors.bg_green }, -- diff mode: Added line |diff.txt|
    DiffAdded = { fg = colors.green },
    DiffDelete = { bg = colors.bg_red }, -- diff mode: Deleted line |diff.txt|
    DiffRemoved = { fg = colors.red },
    DiffText = { fg = colors.bg, bg = colors.blue }, -- diff mode: Changed text within a changed line |diff.txt|
    DiffChange = { bg = colors.bg_blue }, -- diff mode: Changed line |diff.txt|

    -- LSP
    DiagnosticError = { bg = colors.bg_red },
    DiagnosticWarn = { bg = colors.bg_yellow },
    DiagnosticInfo = { bg = colors.bg_blue },
    DiagnosticHint = { bg = colors.bg_green },

    DiagnosticUnderlineError = { sp = colors.red, undercurl = true },
    DiagnosticUnderlineWarn = { sp = colors.red, undercurl = true },
    DiagnosticUnderlineInfo = { sp = colors.blue, undercurl = true },
    DiagnosticUnderlineHint = { sp = colors.purple, undercurl = true },

    -- TreeSitter
    TSProperty = { fg = colors.blue },
    TSField = { fg = colors.blue },
    TSParameter = { fg = colors.fg },
    TSUnderline = { sp = colors.blue, underline = true },
    -- }}}

    -- ===================== Plugins ==================== {{{
    -- Aerial
    AerialLine = { bg = colors.bg_green },

    -- Gitsigns
    GitSignsAdd = { fg = colors.green },
    GitSignsChange = { fg = colors.blue },
    GitSignsDelete = { fg = colors.red },

    -- Telescope
    TelescopeMatching = { fg = colors.green, bold = true },
    TelescopePromptBorder = { fg = colors.yellow },
    TelescopePromptPrefix = { fg = colors.orange },
    TelescopeSelection = { bg = colors.bg_green },

    -- Cmp
    CmpItemAbbrMatch = { fg = colors.red },
    CmpItemAbbrMatchFuzzy = { fg = colors.green },
    CmpItemKindText = { fg = colors.green },
    CmpItemKindMethod = { fg = colors.green },
    CmpItemKindFunction = { fg = colors.green },
    CmpItemKindConstructor = { fg = colors.red },
    CmpItemKindField = { fg = colors.yellow },
    CmpItemKindVariable = { fg = colors.blue },
    CmpItemKindClass = { fg = colors.yellow },
    CmpItemKindInterface = { fg = colors.yellow },
    CmpItemKindModule = { fg = colors.orange },
    CmpItemKindProperty = { fg = colors.red },
    CmpItemKindUnit = { fg = colors.aqua },
    CmpItemKindValue = { fg = colors.aqua },
    CmpItemKindEnum = { fg = colors.yellow },
    CmpItemKindKeyword = { fg = colors.blue },
    CmpItemKindSnippet = { fg = colors.purple },
    CmpItemKindColor = { fg = colors.orange },
    CmpItemKindFile = { fg = colors.orange },
    CmpItemKindReference = { fg = colors.orange },
    CmpItemKindFolder = { fg = colors.orange },
    CmpItemKindEnumMember = { fg = colors.aqua },
    CmpItemKindConstant = { fg = colors.aqua },
    CmpItemKindStruct = { fg = colors.yellow },
    CmpItemKindEvent = { fg = colors.blue },
    CmpItemKindOperator = { fg = colors.orange },
    CmpItemKindTypeParameter = { fg = colors.blue },
    CmpItemMenu = { fg = colors.grey1 },

    -- Word under cursor
    CursorWord = { bg = colors.bg2 },
    CursorWord0 = { bg = colors.bg2 },
    CursorWord1 = { bg = colors.bg2 },

    -- NvimTree
    NvimTreeGitDirty = { fg = colors.orange },
    NvimTreeGitSblueed = { fg = colors.blue },
    NvimTreeGitMerge = { fg = colors.red },
    NvimTreeGitNew = { fg = colors.green },
    NvimTreeGitDeleted = { fg = colors.red },

    NvimTreeFolderName = { fg = colors.fg },
    NvimTreeFolderIcon = { fg = colors.orange },
    NvimTreeOpenedFolderName = { fg = colors.aqua },
    NvimTreeRootFolder = { fg = colors.grey2 },
    NvimTreeSpecialFile = { fg = colors.fg },
    NvimTreeExecFile = { fg = colors.fg },
    NvimTreeIndentMarker = { fg = colors.bg4 },

    NvimTreeWindowPicker = { fg = colors.red, bg = colors.bg4, bold = true },

    -- WhichKey
    WhichKeyFloat = { bg = colors.bg },
    WhichKey = { fg = colors.red },
    WhichKeySeperator = { fg = colors.green },
    WhichKeyGroup = { fg = colors.yellow },
    WhichKeyDesc = { fg = colors.aqua },

    -- Hop
    HopNextKey = { fg = colors.orange, bold = true, underline = true },
    HopNextKey1 = { fg = colors.green, bold = true, underline = true },
    HopNextKey2 = { fg = colors.aqua },
    HopUnmatched = { fg = colors.grey1 },

    -- IndentBlankline
    IndentBlanklineContextChar = { fg = colors.grey1 },
    IndentBlanklineChar = { fg = colors.bg5 },
    IndentBlanklineSpaceChar = { fg = colors.bg5 },
    IndentBlanklineSpaceCharBlankline = { fg = colors.bg5 },

    -- LSP Signature
    LspSignatureActiveParameter = { italic = true },

    -- Notify
    NotifyERROR = { fg = colors.red },
    NotifyWARN = { fg = colors.green },
    NotifyINFO = { fg = colors.green },
    NotifyDEBUG = { fg = colors.grey1 },
    NotifyTRACE = { fg = colors.blue },
    NotifyERRORTitle = { fg = colors.red },
    NotifyWARNTitle = { fg = colors.yellow },
    NotifyINFOTitle = { fg = colors.green },
    NotifyDEBUGTitle = { fg = colors.grey2 },
    NotifyTRACETitle = { fg = colors.yellow },

    -- Packer
    packerFail = { fg = colors.red }, -- Icon when install/update fails
    packerSuccess = { fg = colors.green }, -- Icon when install/update is a success
    packerWorking = { fg = colors.yellow }, -- Icon when syncing
    packerOutput = { fg = colors.blue }, -- Text beneath plugin title (e.g. Commits)
    packerStatusFail = { fg = colors.red },
    packerStatusSuccess = { fg = colors.green }, -- Plugin name when install/update is a success

    -- Dap
    NvimDapVirtualText = { fg = colors.purple },

    -- DAP UI
    DapUIScope = { fg = colors.green },
    DapUIType = { fg = colors.yellow },
    DapUIDecoration = { fg = colors.blue },
    DapUIThread = { fg = colors.green },
    DapUIStoppedThread = { fg = colors.fg },
    DapUISource = { fg = colors.purple },
    DapUILineNumber = { fg = colors.aqua },
    DapUIFloatBorder = { fg = colors.bg4 },
    DapUIWatchesEmpty = { fg = colors.yellow },
    DapUIWatchesValue = { fg = colors.green },
    DapUIWatchesError = { fg = colors.red },
    DapUIBreakpointsPath = { fg = colors.purple },
    DapUIBreakpointsInfo = { fg = colors.aqua },
    DapUIBreakpointsCurrentLine = { fg = colors.aqua, bold = true },

    -- Visual Multi
    VM_Extend = { bg = colors.bg2 },
    VM_Cursor = { bg = colors.bg2, sp = colors.fg, underline = true },
    VM_Insert = { sp = colors.fg, underline = true },
    VM_Mono = { fg = colors.bg, bg = colors.grey1 },
    -- }}}
  }

  groups = vim.tbl_extend('force', groups, type(config.overrides) == 'function' and config.overrides() or config.overrides)

  for group, parameters in pairs(groups) do
    vim.api.nvim_set_hl(0, group, parameters)
  end
end

function nightforest.setup(values)
  setmetatable(config, { __index = vim.tbl_extend('force', config.defaults, values) })
end

function nightforest.colorscheme()
  if not vim.fn.has('nvim-0.7.0') then
    vim.notify('Neovim 0.7+ is required for nightforest colorscheme', vim.log.levels.red, { title = 'nightforest colorscheme' })
    return
  end

  vim.api.nvim_command('hi clear')
  if vim.fn.exists('syntax_on') then
    vim.api.nvim_command('syntax reset')
  end

  vim.g.VM_theme_set_by_colorscheme = true -- Required for Visual Multi
  vim.o.termguicolors = true
  vim.g.colors_name = 'nightforest'

  colors.generate(config.midnight)
  set_terminal_colors()
  set_groups()
end

return nightforest
