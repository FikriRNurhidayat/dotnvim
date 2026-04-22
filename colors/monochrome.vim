set notermguicolors
set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "monochrome"

hi Normal           guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Cursor           guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE cterm=reverse
hi Comment          guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE cterm=italic
hi Constant         guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE cterm=bold
hi Function         guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE cterm=bold
hi Statement        guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE cterm=bold
hi PreProc          guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE cterm=bold
hi Type             guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE cterm=bold
hi Underlined       guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE cterm=underline
hi StatusLine       guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE cterm=bold
hi StatusLineNC     guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE cterm=bold
hi Title            guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE cterm=bold
hi TabLineSel       guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE cterm=bold

hi! link Identifier Normal
hi! link LineNr Normal
hi! link NonText Normal
hi! link Special Normal
hi! link String Normal
hi! link TabLine Normal
hi! link Todo Cursor 
hi! link VertSplit Normal
hi! link Pmenu Normal
hi! link DiffAdd Normal
hi! link DiffText Normal
hi! link DiffTextAdd Normal
hi! link RedrawDebugClear Normal
hi! link RedrawDebugComposed Normal
hi! link RedrawDebugRecompose Normal

hi! link CurSearch Cursor
hi! link Visual Cursor
hi! link Search Cursor
hi! link CursorLine Cursor
hi! link CursorLineNr Cursor
hi! link ColorColumn Cursor
hi! link Error Cursor
hi! link MatchParen Cursor
hi! link NvimInternalError Error

hi! PmenuSel guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE cterm=reverse
