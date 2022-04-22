local zephyr = {
  base0      = '#1B2229';
  base1      = '#1c1f24';
  base2      = '#202328';
  base3      = '#23272e';
  base4      = '#3f444a';
  base5      = '#5B6268';
  base6      = '#73797e';
  base7      = '#9ca0a4';
  base8      = '#b1b1b1';

  bg = '#282a36';
  bg1 = '#504945';
  bg_popup = '#3E4556';
  bg_highlight  = '#2E323C';
  bg_visual = '#b3deef';

  fg = '#bbc2cf';
  fg_alt  = '#5B6268';

  black       = '#282a36';
  gray_dark   = '#3c3836';
  gray_darker = '#242a32';
  gray        = '#928374';
  gray_light  = '#c0c0c0';
  white       = '#ffffff';
  
  dsdark0       = '#2C323B';
  dsdark1       = '#3c3836';
  dsdark2       = '#242a32';
  dsdark3       = '#665c54';
  dsdark4       = '#7c6f64';
  dsdark4_256   = '#7c6f64';
  
  dsColumn       = '#35312f';
  
  dslight0      = '#d2d2d2';
  dslight1      = '#ebdbb2';
  dslight2      = '#d5c4a1';
  dslight3      = '#bdae93';
  dslight4      = '#a89984';
  dslight4_256  = '#a89984';
  
  tan = '#f4c069';
  
  red       = '#fb4934';
  red_dark  = '#a80000';
  red_light = '#ff4090';
  
  orange       = '#fe8019';
  orange_light = '#f0af00';
  
  yellow = '#fabd2f';
  
  green_dark  = '#50de60';
  green       = '#98C379';
  green_light = '#a0ff70';
  
  blue     = '#83a598';
  cyan     = '#8ec07c';
  ice      = '#49a0f0';
  teal     = '#00d0c0';
  turqoise = '#2bff99';
  
  magenta      = '#d5508f';
  magenta_dark = '#bb0099';
  pink         = '#ffa6ff';
  pink_light   = '#ffb7b7';
  purple       = '#C678DD';
  purple_light = '#A8D5E2';
  magenta_light1 = '#BD93BD';
  magenta_light2 = '#A7A2A9';
  --navyblue = '#6699CC';
  navyblue = '#9fa8da';

  bracket = '#80A0C2';
  currsor_bg = '#4f5b66';
  none = 'NONE';
}

function zephyr.terminal_color()
  vim.g.terminal_color_0 = zephyr.black
  vim.g.terminal_color_1 = zephyr.red_dark
  vim.g.terminal_color_2 = zephyr.green_dark
  vim.g.terminal_color_3 = zephyr.orange
  vim.g.terminal_color_4 = zephyr.blue
  vim.g.terminal_color_5 = zephyr.magenta_dark
  vim.g.terminal_color_6 = zephyr.teal
  vim.g.terminal_color_7 = zephyr.gray
  vim.g.terminal_color_8 = zephyr.gray_dark
  vim.g.terminal_color_9 = zephyr.red
  vim.g.terminal_color_10 = zephyr.green
  vim.g.terminal_color_11 = zephyr.yellow
  vim.g.terminal_color_12 = zephyr.turqoise
  vim.g.terminal_color_13 = zephyr.purple
  vim.g.terminal_color_14 = zephyr.cyan
  vim.g.terminal_color_15 = zephyr.gray_light
end

function zephyr.highlight(group, color)
    local style = color.style and 'gui=' .. color.style or 'gui=NONE'
    local fg = color.fg and 'guifg=' .. color.fg or 'guifg=NONE'
    local bg = color.bg and 'guibg=' .. color.bg or 'guibg=NONE'
    local sp = color.sp and 'guisp=' .. color.sp or ''
    vim.api.nvim_command('highlight ' .. group .. ' ' .. style .. ' ' .. fg ..
                             ' ' .. bg..' '..sp)
end


function zephyr.load_syntax()
  local syntax = {
    Normal = {fg = zephyr.fg,bg=zephyr.bg};
    Terminal = {fg = zephyr.fg,bg=zephyr.bg};
    SignColumn = {fg=zephyr.fg,bg=zephyr.bg};
    FoldColumn = {fg=zephyr.fg_alt,bg=zephyr.black};
    VertSplit = {fg=zephyr.black,bg=zephyr.bg};
    Folded = {fg=zephyr.gray,bg=zephyr.bg_highlight};
    EndOfBuffer = {fg=zephyr.bg,bg=zephyr.none};
    IncSearch = {fg=zephyr.bg1,bg=zephyr.orange,style=zephyr.none};
    Search = {fg=zephyr.bg,bg=zephyr.orange};
    ColorColumn = {fg=zephyr.none,bg=zephyr.bg_highlight};
    Conceal = {fg=zephyr.gray,bg=zephyr.none};
    Cursor = {fg=zephyr.none,bg=zephyr.none,style='reverse'};
    vCursor = {fg=zephyr.none,bg=zephyr.none,style='reverse'};
    iCursor = {fg=zephyr.none,bg=zephyr.none,style='reverse'};
    lCursor = {fg=zephyr.none,bg=zephyr.none,style='reverse'};
    CursorIM = {fg=zephyr.none,bg=zephyr.none,style='reverse'};
    CursorColumn = {fg=zephyr.none,bg=zephyr.bg_highlight};
    CursorLine = {fg=zephyr.none,bg=zephyr.bg_highlight};
    LineNr = {fg=zephyr.base4};
    qfLineNr = {fg=zephyr.cyan};
    CursorLineNr = {fg=zephyr.blue};
    DiffAdd = {fg=zephyr.black,bg=zephyr.green_dark};
    DiffChange = {fg=zephyr.black,bg=zephyr.yellow};
    DiffDelete = {fg=zephyr.black,bg=zephyr.red};
    DiffText = {fg=zephyr.black,bg=zephyr.fg};
    Directory = {fg=zephyr.blue,bg=zephyr.none};
    ErrorMsg = {fg=zephyr.red,bg=zephyr.none,style='bold'};
    WarningMsg = {fg=zephyr.yellow,bg=zephyr.none,style='bold'};
    ModeMsg = {fg=zephyr.fg,bg=zephyr.none,style='bold'};
    MatchParen = {fg=zephyr.orange,bg=zephyr.gray,style='bold'};
    NonText = {fg=zephyr.bg1};
    Whitespace = {fg=zephyr.base4};
    SpecialKey = {fg=zephyr.bg1};
    Pmenu = {fg=zephyr.fg,bg=zephyr.bg_popup};
    PmenuSel = {fg=zephyr.base0,bg=zephyr.blue};
    PmenuSelBold = {fg=zephyr.base0,g=zephyr.blue};
    PmenuSbar = {fg=zephyr.none,bg=zephyr.base4};
    PmenuThumb = {fg=zephyr.pink,bg=zephyr.green_light};
    WildMenu = {fg=zephyr.fg,bg=zephyr.green};
    Question = {fg=zephyr.yellow};
    NormalFloat = {fg=zephyr.base8,bg=zephyr.bg_highlight};
    Tabline = {fg=zephyr.base6,bg=zephyr.base2};
    TabLineFill = {style=zephyr.none};
    TabLineSel = {fg=zephyr.fg,bg=zephyr.blue};
    StatusLine = {fg=zephyr.base8,bg=zephyr.base2,style=zephyr.none};
    StatusLineNC = {fg=zephyr.gray,bg=zephyr.base2,style=zephyr.none};
    SpellBad = {fg=zephyr.red,bg=zephyr.none,style='undercurl'};
    SpellCap = {fg=zephyr.blue,bg=zephyr.none,style='undercurl'};
    SpellLocal = {fg=zephyr.cyan,bg=zephyr.none,style='undercurl'};
    SpellRare = {fg=zephyr.pink,bg=zephyr.none,style = 'undercurl'};
    Visual = {style='inverse'};
    VisualNOS = {bg=gray_darker};
    QuickFixLine = {fg=zephyr.pink,style='bold'};
    Debug = {fg=zephyr.orange};
    debugBreakpoint = {fg=zephyr.bg,bg=zephyr.red};

    Boolean = {fg=zephyr.purple};
    Number = {fg=zephyr.purple};
    Float = {fg=zephyr.purple};
    PreProc = {fg=zephyr.pink};
    PreCondit = {fg=zephyr.tan};
    Include = {fg=zephyr.blue};
    Define = {fg=zephyr.blue};
    Conditional = {fg=zephyr.red};
    Repeat = {fg=zephyr.red};
    Keyword = {fg=zephyr.red};
    Typedef = {fg=zephyr.cyan};
    Exception = {fg=zephyr.red, style='bold'};
    Statement = {fg=zephyr.red};
    Error = {fg=zephyr.red};
    StorageClass = {fg=zephyr.orange};
    Tag = {fg=zephyr.orange};
    Label = {fg=zephyr.orange};
    Structure = {fg=zephyr.blue, style='bold'};
    Operator = {fg=zephyr.blue};
    Title = {fg=zephyr.orange,style='bold'};
    Special = {fg=zephyr.magenta};
    SpecialChar = {fg=zephyr.red_light};
    Type = {fg=zephyr.yellow};
    Function = {fg=zephyr.green};
    String = {fg=zephyr.green};
    Character = {fg=zephyr.purple};
    Constant = {fg=zephyr.orange_light};
    Macro = {fg=zephyr.blue};
    Identifier = {fg=zephyr.navyblue};

    Comment = {fg=zephyr.base6};
    SpecialComment = {fg=zephyr.gray};
    Todo = {fg=zephyr.yellow};
    Delimiter = {fg=zephyr.orange};
    Ignore = {fg=zephyr.gray};
    Underlined = {fg=zephyr.none,style='underline'};

    DashboardShortCut = {fg=zephyr.magenta};
    DashboardHeader = {fg=zephyr.orange};
    DashboardCenter = {fg=zephyr.cyan};
    DashboardFooter = {fg=zephyr.yellow,style='bold'};
  }
  return syntax
end

function zephyr.load_plugin_syntax()
  local plugin_syntax = {
    TSFunction = {fg=zephyr.green, style='bold'};
    TSMethod = {fg=zephyr.cyan};
    TSKeywordFunction = {fg=zephyr.red};
    TSProperty = {fg=zephyr.yellow};
    TSType = {fg='#ebb12d'};
    TSVariable = {fg=zephyr.navyblue};
    TSPunctBracket = {fg=zephyr.orange};

    vimCommentTitle = {fg=zephyr.gray,style='bold'};
    vimLet = {fg=zephyr.orange};
    vimVar = {fg=zephyr.cyan};
    vimFunction = {fg=zephyr.magenta};
    vimIsCommand = {fg=zephyr.fg};
    vimCommand = {fg=zephyr.blue};
    vimNotFunc = {fg=zephyr.pink,style='bold'};
    vimUserFunc = {fg=zephyr.yellow,style='bold'};
    vimFuncName= {fg=zephyr.yellow,style='bold'};

    diffAdded = {fg = zephyr.green_dark};
    diffRemoved = {fg =zephyr.red};
    diffChanged = {fg = zephyr.blue};
    diffOldFile = {fg = zephyr.yellow};
    diffNewFile = {fg = zephyr.orange};
    diffFile    = {fg = zephyr.aqua};
    diffLine    = {fg = zephyr.gray};
    diffIndexLine = {fg = zephyr.pink};

    gitcommitSummary = {fg = zephyr.red};
    gitcommitUntracked = {fg = zephyr.gray};
    gitcommitDiscarded = {fg = zephyr.gray};
    gitcommitSelected = { fg=zephyr.gray};
    gitcommitUnmerged = { fg=zephyr.gray};
    gitcommitOnBranch = { fg=zephyr.gray};
    gitcommitArrow  = {fg = zephyr.gray};
    gitcommitFile  = {fg = zephyr.green_dark};

    VistaBracket = {fg=zephyr.gray};
    VistaChildrenNr = {fg=zephyr.orange};
    VistaKind = {fg=zephyr.purpl};
    VistaScope = {fg=zephyr.red};
    VistaScopeKind = {fg=zephyr.blue};
    VistaTag = {fg=zephyr.magenta,style='bold'};
    VistaPrefix = {fg=zephyr.gray};
    VistaColon = {fg=zephyr.magenta};
    VistaIcon = {fg=zephyr.yellow};
    VistaLineNr = {fg=zephyr.fg};

    GitGutterAdd = {fg=zephyr.green_dark};
    GitGutterChange = {fg=zephyr.blue};
    GitGutterDelete = {fg=zephyr.red};
    GitGutterChangeDelete = {fg=zephyr.pink};

    GitSignsAdd = {fg=zephyr.green_dark};
    GitSignsChange = {fg=zephyr.blue};
    GitSignsDelete = {fg=zephyr.red};
    GitSignsAddNr = {fg=zephyr.green_dark};
    GitSignsChangeNr = {fg=zephyr.blue};
    GitSignsDeleteNr = {fg=zephyr.red};
    GitSignsAddLn = {bg=zephyr.bg_popup};
    GitSignsChangeLn = {bg=zephyr.bg_highlight};
    GitSignsDeleteLn = {bg=zephyr.bg1};

    SignifySignAdd = {fg=zephyr.green_dark};
    SignifySignChange = {fg=zephyr.blue};
    SignifySignDelete = {fg=zephyr.red};

    dbui_tables = {fg=zephyr.blue};

    LspDiagnosticsSignError = {fg=zephyr.red};
    LspDiagnosticsSignWarning = {fg=zephyr.yellow};
    LspDiagnosticsSignInformation = {fg=zephyr.blue};
    LspDiagnosticsSignHint = {fg=zephyr.cyan};

    LspDiagnosticsVirtualTextError = {fg=zephyr.red};
    LspDiagnosticsVirtualTextWarning= {fg=zephyr.yellow};
    LspDiagnosticsVirtualTextInformation = {fg=zephyr.blue};
    LspDiagnosticsVirtualTextHint = {fg=zephyr.cyan};

    LspDiagnosticsUnderlineError = {style="undercurl",sp=zephyr.red};
    LspDiagnosticsUnderlineWarning = {style="undercurl",sp=zephyr.yellow};
    LspDiagnosticsUnderlineInformation = {style="undercurl",sp=zephyr.blue};
    LspDiagnosticsUnderlineHint = {style="undercurl",sp=zephyr.cyan};

    CursorWord0 = {bg=zephyr.currsor_bg};
    CursorWord1 = {bg=zephyr.currsor_bg};

    NvimTreeFolderName = {fg=zephyr.blue};
    NvimTreeRootFolder = {fg=zephyr.red,style='bold'};
    NvimTreeSpecialFile = {fg=zephyr.fg,bg=zephyr.none,stryle='NONE'};

    TelescopeBorder = {fg=zephyr.teal};
    TelescopePromptBorder = {fg=zephyr.blue};
    TelescopeMatching = {fg=zephyr.teal};
    TelescopeSelection = {fg=zephyr.yellow,bg=zephyr.bg_highlight,style= 'bold'};
    TelescopeSelectionCaret = {fg=zephyr.yellow};
    TelescopeMultiSelection = {fg=zephyr.teal};
  }
  return plugin_syntax
end

local async_load_plugin

async_load_plugin = vim.loop.new_async(vim.schedule_wrap(function ()
  zephyr.terminal_color()
  local syntax = zephyr.load_plugin_syntax()
  for group,colors in pairs(syntax) do
    zephyr.highlight(group,colors)
  end
  async_load_plugin:close()
end))

function zephyr.colorscheme()
  vim.api.nvim_command('hi clear')
  if vim.fn.exists('syntax_on') then
    vim.api.nvim_command('syntax reset')
  end
  vim.o.background = 'dark'
  vim.o.termguicolors = true
  vim.g.colors_name = 'zephyr'
  local syntax = zephyr.load_syntax()
  for group,colors in pairs(syntax) do
    zephyr.highlight(group,colors)
  end
  async_load_plugin:send()
end

zephyr.colorscheme()

return zephyr
