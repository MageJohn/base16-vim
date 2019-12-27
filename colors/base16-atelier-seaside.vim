" vi:syntax=vim

" base16-vim (https://github.com/chriskempson/base16-vim)
" by Chris Kempson (http://chriskempson.com)
" Atelier Seaside scheme by Bram de Haan (http://atelierbramdehaan.nl)

" This enables the coresponding base16-shell script to run so that
" :colorscheme works in terminals supported by base16-shell scripts
" User must set this variable in .vimrc
"   let g:base16_shell_path=base16-builder/output/shell/
if !has("gui_running")
  if exists("g:base16_shell_path")
    execute "silent !/bin/sh ".g:base16_shell_path."/base16-atelier-seaside.sh"
  endif
endif

" GUI color definitions
let g:base16_gui00 = "131513"
let g:base16_gui01 = "242924"
let g:base16_gui02 = "5e6e5e"
let g:base16_gui03 = "687d68"
let g:base16_gui04 = "809980"
let g:base16_gui05 = "8ca68c"
let g:base16_gui06 = "cfe8cf"
let g:base16_gui07 = "f4fbf4"
let g:base16_gui08 = "e6193c"
let g:base16_gui09 = "87711d"
let g:base16_gui0A = "98981b"
let g:base16_gui0B = "29a329"
let g:base16_gui0C = "1999b3"
let g:base16_gui0D = "3d62f5"
let g:base16_gui0E = "ad2bee"
let g:base16_gui0F = "e619c3"

" Terminal color definitions
let g:base16_cterm00 = "00"
let g:base16_cterm03 = "08"
let g:base16_cterm05 = "07"
let g:base16_cterm07 = "15"
let g:base16_cterm08 = "01"
let g:base16_cterm0A = "03"
let g:base16_cterm0B = "02"
let g:base16_cterm0C = "06"
let g:base16_cterm0D = "04"
let g:base16_cterm0E = "05"
if exists("base16colorspace") && base16colorspace == "256"
  let g:base16_cterm01 = "18"
  let g:base16_cterm02 = "19"
  let g:base16_cterm04 = "20"
  let g:base16_cterm06 = "21"
  let g:base16_cterm09 = "16"
  let g:base16_cterm0F = "17"
else
  let g:base16_cterm01 = "10"
  let g:base16_cterm02 = "11"
  let g:base16_cterm04 = "12"
  let g:base16_cterm06 = "13"
  let g:base16_cterm09 = "09"
  let g:base16_cterm0F = "14"
endif

" Neovim terminal colours
if has("nvim")
  let g:terminal_color_0 =  "#131513"
  let g:terminal_color_1 =  "#e6193c"
  let g:terminal_color_2 =  "#29a329"
  let g:terminal_color_3 =  "#98981b"
  let g:terminal_color_4 =  "#3d62f5"
  let g:terminal_color_5 =  "#ad2bee"
  let g:terminal_color_6 =  "#1999b3"
  let g:terminal_color_7 =  "#8ca68c"
  let g:terminal_color_8 =  "#687d68"
  let g:terminal_color_9 =  "#e6193c"
  let g:terminal_color_10 = "#29a329"
  let g:terminal_color_11 = "#98981b"
  let g:terminal_color_12 = "#3d62f5"
  let g:terminal_color_13 = "#ad2bee"
  let g:terminal_color_14 = "#1999b3"
  let g:terminal_color_15 = "#f4fbf4"
  let g:terminal_color_background = g:terminal_color_0
  let g:terminal_color_foreground = g:terminal_color_5
  if &background == "light"
    let g:terminal_color_background = g:terminal_color_7
    let g:terminal_color_foreground = g:terminal_color_2
  endif
elseif has("terminal")
  let g:terminal_ansi_colors = [
        \ "#131513",
        \ "#e6193c",
        \ "#29a329",
        \ "#98981b",
        \ "#3d62f5",
        \ "#ad2bee",
        \ "#1999b3",
        \ "#8ca68c",
        \ "#687d68",
        \ "#e6193c",
        \ "#29a329",
        \ "#98981b",
        \ "#3d62f5",
        \ "#ad2bee",
        \ "#1999b3",
        \ "#f4fbf4",
        \ ]
endif

" Theme setup
hi clear
syntax reset
let g:colors_name = "base16-atelier-seaside"


" Vim editor colors
exec 'hi Normal' 'guifg=#'..g:base16_gui05 'guibg=#'..g:base16_gui00 'ctermfg='..g:base16_cterm05 'ctermbg='..g:base16_cterm00
exec 'hi Bold' 'gui=bold' 'cterm=bold'
exec 'hi Debug' 'guifg=#'..g:base16_gui08 'ctermfg='..g:base16_cterm08
exec 'hi Directory' 'guifg=#'..g:base16_gui0D 'ctermfg='..g:base16_cterm0D
exec 'hi Error' 'guifg=#'..g:base16_gui00 'guibg=#'..g:base16_gui08 'ctermfg='..g:base16_cterm00 'ctermbg='..g:base16_cterm08
exec 'hi ErrorMsg' 'guifg=#'..g:base16_gui08 'guibg=#'..g:base16_gui00 'ctermfg='..g:base16_cterm08 'ctermbg='..g:base16_cterm00
exec 'hi Exception' 'guifg=#'..g:base16_gui08 'ctermfg='..g:base16_cterm08
exec 'hi FoldColumn' 'guifg=#'..g:base16_gui0C 'guibg=#'..g:base16_gui01 'ctermfg='..g:base16_cterm0C 'ctermbg='..g:base16_cterm01
exec 'hi Folded' 'guifg=#'..g:base16_gui03 'guibg=#'..g:base16_gui01 'ctermfg='..g:base16_cterm03 'ctermbg='..g:base16_cterm01
exec 'hi IncSearch' 'guifg=#'..g:base16_gui01 'guibg=#'..g:base16_gui09 'ctermfg='..g:base16_cterm01 'ctermbg='..g:base16_cterm09 'gui=none' 'cterm=none'
exec 'hi Italic' 'gui=none' 'cterm=none'
exec 'hi Macro' 'guifg=#'..g:base16_gui08 'ctermfg='..g:base16_cterm08
exec 'hi MatchParen' 'guibg=#'..g:base16_gui03 'ctermbg='..g:base16_cterm03
exec 'hi ModeMsg' 'guifg=#'..g:base16_gui0B 'ctermfg='..g:base16_cterm0B
exec 'hi MoreMsg' 'guifg=#'..g:base16_gui0B 'ctermfg='..g:base16_cterm0B
exec 'hi Question' 'guifg=#'..g:base16_gui0D 'ctermfg='..g:base16_cterm0D
exec 'hi Search' 'guifg=#'..g:base16_gui01 'guibg=#'..g:base16_gui0A 'ctermfg='..g:base16_cterm01 'ctermbg='..g:base16_cterm0A
exec 'hi Substitute' 'guifg=#'..g:base16_gui01 'guibg=#'..g:base16_gui0A 'ctermfg='..g:base16_cterm01 'ctermbg='..g:base16_cterm0A 'gui=none' 'cterm=none'
exec 'hi SpecialKey' 'guifg=#'..g:base16_gui03 'ctermfg='..g:base16_cterm03
exec 'hi TooLong' 'guifg=#'..g:base16_gui08 'ctermfg='..g:base16_cterm08
exec 'hi Underlined' 'guifg=#'..g:base16_gui08 'ctermfg='..g:base16_cterm08
exec 'hi Visual' 'guibg=#'..g:base16_gui02 'ctermbg='..g:base16_cterm02
exec 'hi VisualNOS' 'guifg=#'..g:base16_gui08 'ctermfg='..g:base16_cterm08
exec 'hi WarningMsg' 'guifg=#'..g:base16_gui08 'ctermfg='..g:base16_cterm08
exec 'hi WildMenu' 'guifg=#'..g:base16_gui08 'guibg=#'..g:base16_gui0A 'ctermfg='..g:base16_cterm08
exec 'hi Title' 'guifg=#'..g:base16_gui0D 'ctermfg='..g:base16_cterm0D 'gui=none' 'cterm=none'
exec 'hi Conceal' 'guifg=#'..g:base16_gui0D 'guibg=#'..g:base16_gui00 'ctermfg='..g:base16_cterm0D 'ctermbg='..g:base16_cterm00
exec 'hi Cursor' 'guifg=#'..g:base16_gui00 'guibg=#'..g:base16_gui05 'ctermfg='..g:base16_cterm00 'ctermbg='..g:base16_cterm05
exec 'hi NonText' 'guifg=#'..g:base16_gui03 'ctermfg='..g:base16_cterm03
exec 'hi Whitespace' 'guifg=#'..g:base16_gui03 'ctermfg='..g:base16_cterm03
exec 'hi LineNr' 'guifg=#'..g:base16_gui03 'guibg=#'..g:base16_gui01 'ctermfg='..g:base16_cterm03 'ctermbg='..g:base16_cterm01
exec 'hi SignColumn' 'guifg=#'..g:base16_gui03 'guibg=#'..g:base16_gui01 'ctermfg='..g:base16_cterm03 'ctermbg='..g:base16_cterm01
exec 'hi StatusLine' 'guifg=#'..g:base16_gui04 'guibg=#'..g:base16_gui02 'ctermfg='..g:base16_cterm04 'ctermbg='..g:base16_cterm02 'gui=none' 'cterm=none'
exec 'hi StatusLineNC' 'guifg=#'..g:base16_gui03 'guibg=#'..g:base16_gui01 'ctermfg='..g:base16_cterm03 'ctermbg='..g:base16_cterm01 'gui=none' 'cterm=none'
exec 'hi VertSplit' 'guifg=#'..g:base16_gui02 'guibg=#'..g:base16_gui02 'ctermfg='..g:base16_cterm02 'ctermbg='..g:base16_cterm02 'gui=none' 'cterm=none'
exec 'hi ColorColumn' 'guibg=#'..g:base16_gui01 'ctermbg='..g:base16_cterm01 'gui=none' 'cterm=none'
exec 'hi CursorColumn' 'guibg=#'..g:base16_gui01 'ctermbg='..g:base16_cterm01 'gui=none' 'cterm=none'
exec 'hi CursorLine' 'guibg=#'..g:base16_gui01 'ctermbg='..g:base16_cterm01 'gui=none' 'cterm=none'
exec 'hi CursorLineNr' 'guifg=#'..g:base16_gui04 'guibg=#'..g:base16_gui01 'ctermfg='..g:base16_cterm04 'ctermbg='..g:base16_cterm01
exec 'hi QuickFixLine' 'guibg=#'..g:base16_gui01 'ctermbg='..g:base16_cterm01 'gui=none' 'cterm=none'
exec 'hi PMenu' 'guifg=#'..g:base16_gui05 'guibg=#'..g:base16_gui01 'ctermfg='..g:base16_cterm05 'ctermbg='..g:base16_cterm01 'gui=none' 'cterm=none'
exec 'hi PMenuSel' 'guifg=#'..g:base16_gui01 'guibg=#'..g:base16_gui05 'ctermfg='..g:base16_cterm01 'ctermbg='..g:base16_cterm05
exec 'hi TabLine' 'guifg=#'..g:base16_gui03 'guibg=#'..g:base16_gui01 'ctermfg='..g:base16_cterm03 'ctermbg='..g:base16_cterm01 'gui=none' 'cterm=none'
exec 'hi TabLineFill' 'guifg=#'..g:base16_gui03 'guibg=#'..g:base16_gui01 'ctermfg='..g:base16_cterm03 'ctermbg='..g:base16_cterm01 'gui=none' 'cterm=none'
exec 'hi TabLineSel' 'guifg=#'..g:base16_gui0B 'guibg=#'..g:base16_gui01 'ctermfg='..g:base16_cterm0B 'ctermbg='..g:base16_cterm01 'gui=none' 'cterm=none'

" Standard syntax highlighting
exec 'hi Boolean' 'guifg=#'..g:base16_gui09 'ctermfg='..g:base16_cterm09
exec 'hi Character' 'guifg=#'..g:base16_gui08 'ctermfg='..g:base16_cterm08
exec 'hi Comment' 'guifg=#'..g:base16_gui03 'ctermfg='..g:base16_cterm03
exec 'hi Conditional' 'guifg=#'..g:base16_gui0E 'ctermfg='..g:base16_cterm0E
exec 'hi Constant' 'guifg=#'..g:base16_gui09 'ctermfg='..g:base16_cterm09
exec 'hi Define' 'guifg=#'..g:base16_gui0E 'ctermfg='..g:base16_cterm0E 'gui=none' 'cterm=none'
exec 'hi Delimiter' 'guifg=#'..g:base16_gui0F 'ctermfg='..g:base16_cterm0F
exec 'hi Float' 'guifg=#'..g:base16_gui09 'ctermfg='..g:base16_cterm09
exec 'hi Function' 'guifg=#'..g:base16_gui0D 'ctermfg='..g:base16_cterm0D
exec 'hi Identifier' 'guifg=#'..g:base16_gui08 'ctermfg='..g:base16_cterm08 'gui=none' 'cterm=none'
exec 'hi Include' 'guifg=#'..g:base16_gui0D 'ctermfg='..g:base16_cterm0D
exec 'hi Keyword' 'guifg=#'..g:base16_gui0E 'ctermfg='..g:base16_cterm0E
exec 'hi Label' 'guifg=#'..g:base16_gui0A 'ctermfg='..g:base16_cterm0A
exec 'hi Number' 'guifg=#'..g:base16_gui09 'ctermfg='..g:base16_cterm09
exec 'hi Operator' 'guifg=#'..g:base16_gui05 'ctermfg='..g:base16_cterm05 'gui=none' 'cterm=none'
exec 'hi PreProc' 'guifg=#'..g:base16_gui0A 'ctermfg='..g:base16_cterm0A
exec 'hi Repeat' 'guifg=#'..g:base16_gui0A 'ctermfg='..g:base16_cterm0A
exec 'hi Special' 'guifg=#'..g:base16_gui0C 'ctermfg='..g:base16_cterm0C
exec 'hi SpecialChar' 'guifg=#'..g:base16_gui0F 'ctermfg='..g:base16_cterm0F
exec 'hi Statement' 'guifg=#'..g:base16_gui08 'ctermfg='..g:base16_cterm08
exec 'hi StorageClass' 'guifg=#'..g:base16_gui0A 'ctermfg='..g:base16_cterm0A
exec 'hi String' 'guifg=#'..g:base16_gui0B 'ctermfg='..g:base16_cterm0B
exec 'hi Structure' 'guifg=#'..g:base16_gui0E 'ctermfg='..g:base16_cterm0E
exec 'hi Tag' 'guifg=#'..g:base16_gui0A 'ctermfg='..g:base16_cterm0A
exec 'hi Todo' 'guifg=#'..g:base16_gui0A 'guibg=#'..g:base16_gui01 'ctermfg='..g:base16_cterm0A 'ctermbg='..g:base16_cterm01
exec 'hi Type' 'guifg=#'..g:base16_gui0A 'ctermfg='..g:base16_cterm0A 'gui=none' 'cterm=none'
exec 'hi Typedef' 'guifg=#'..g:base16_gui0A 'ctermfg='..g:base16_cterm0A

" C highlighting
exec 'hi cOperator' 'guifg=#'..g:base16_gui0C 'ctermfg='..g:base16_cterm0C
exec 'hi cPreCondit' 'guifg=#'..g:base16_gui0E 'ctermfg='..g:base16_cterm0E

" C# highlighting
exec 'hi csClass' 'guifg=#'..g:base16_gui0A 'ctermfg='..g:base16_cterm0A
exec 'hi csAttribute' 'guifg=#'..g:base16_gui0A 'ctermfg='..g:base16_cterm0A
exec 'hi csModifier' 'guifg=#'..g:base16_gui0E 'ctermfg='..g:base16_cterm0E
exec 'hi csType' 'guifg=#'..g:base16_gui08 'ctermfg='..g:base16_cterm08
exec 'hi csUnspecifiedStatement' 'guifg=#'..g:base16_gui0D 'ctermfg='..g:base16_cterm0D
exec 'hi csContextualStatement' 'guifg=#'..g:base16_gui0E 'ctermfg='..g:base16_cterm0E
exec 'hi csNewDecleration' 'guifg=#'..g:base16_gui08 'ctermfg='..g:base16_cterm08

" CSS highlighting
exec 'hi cssBraces' 'guifg=#'..g:base16_gui05 'ctermfg='..g:base16_cterm05
exec 'hi cssClassName' 'guifg=#'..g:base16_gui0E 'ctermfg='..g:base16_cterm0E
exec 'hi cssColor' 'guifg=#'..g:base16_gui0C 'ctermfg='..g:base16_cterm0C

" Diff highlighting
exec 'hi DiffAdd' 'guifg=#'..g:base16_gui0B 'guibg=#'..g:base16_gui01 'ctermfg='..g:base16_cterm0B 'ctermbg='..g:base16_cterm01
exec 'hi DiffChange' 'guifg=#'..g:base16_gui03 'guibg=#'..g:base16_gui01 'ctermfg='..g:base16_cterm03 'ctermbg='..g:base16_cterm01
exec 'hi DiffDelete' 'guifg=#'..g:base16_gui08 'guibg=#'..g:base16_gui01 'ctermfg='..g:base16_cterm08 'ctermbg='..g:base16_cterm01
exec 'hi DiffText' 'guifg=#'..g:base16_gui0D 'guibg=#'..g:base16_gui01 'ctermfg='..g:base16_cterm0D 'ctermbg='..g:base16_cterm01
exec 'hi DiffAdded' 'guifg=#'..g:base16_gui0B 'guibg=#'..g:base16_gui00 'ctermfg='..g:base16_cterm0B 'ctermbg='..g:base16_cterm00
exec 'hi DiffFile' 'guifg=#'..g:base16_gui08 'guibg=#'..g:base16_gui00 'ctermfg='..g:base16_cterm08 'ctermbg='..g:base16_cterm00
exec 'hi DiffNewFile' 'guifg=#'..g:base16_gui0B 'guibg=#'..g:base16_gui00 'ctermfg='..g:base16_cterm0B 'ctermbg='..g:base16_cterm00
exec 'hi DiffLine' 'guifg=#'..g:base16_gui0D 'guibg=#'..g:base16_gui00 'ctermfg='..g:base16_cterm0D 'ctermbg='..g:base16_cterm00
exec 'hi DiffRemoved' 'guifg=#'..g:base16_gui08 'guibg=#'..g:base16_gui00 'ctermfg='..g:base16_cterm08 'ctermbg='..g:base16_cterm00

" Git highlighting
exec 'hi gitcommitOverflow' 'guifg=#'..g:base16_gui08 'ctermfg='..g:base16_cterm08
exec 'hi gitcommitSummary' 'guifg=#'..g:base16_gui0B 'ctermfg='..g:base16_cterm0B
exec 'hi gitcommitComment' 'guifg=#'..g:base16_gui03 'ctermfg='..g:base16_cterm03
exec 'hi gitcommitUntracked' 'guifg=#'..g:base16_gui03 'ctermfg='..g:base16_cterm03
exec 'hi gitcommitDiscarded' 'guifg=#'..g:base16_gui03 'ctermfg='..g:base16_cterm03
exec 'hi gitcommitSelected' 'guifg=#'..g:base16_gui03 'ctermfg='..g:base16_cterm03
exec 'hi gitcommitHeader' 'guifg=#'..g:base16_gui0E 'ctermfg='..g:base16_cterm0E
exec 'hi gitcommitSelectedType' 'guifg=#'..g:base16_gui0D 'ctermfg='..g:base16_cterm0D
exec 'hi gitcommitUnmergedType' 'guifg=#'..g:base16_gui0D 'ctermfg='..g:base16_cterm0D
exec 'hi gitcommitDiscardedType' 'guifg=#'..g:base16_gui0D 'ctermfg='..g:base16_cterm0D
exec 'hi gitcommitBranch' 'guifg=#'..g:base16_gui09 'ctermfg='..g:base16_cterm09 'gui=bold' 'cterm=bold'
exec 'hi gitcommitUntrackedFile' 'guifg=#'..g:base16_gui0A 'ctermfg='..g:base16_cterm0A
exec 'hi gitcommitUnmergedFile' 'guifg=#'..g:base16_gui08 'ctermfg='..g:base16_cterm08 'gui=bold' 'cterm=bold'
exec 'hi gitcommitDiscardedFile' 'guifg=#'..g:base16_gui08 'ctermfg='..g:base16_cterm08 'gui=bold' 'cterm=bold'
exec 'hi gitcommitSelectedFile' 'guifg=#'..g:base16_gui0B 'ctermfg='..g:base16_cterm0B 'gui=bold' 'cterm=bold'

" GitGutter highlighting
exec 'hi GitGutterAdd' 'guifg=#'..g:base16_gui0B 'guibg=#'..g:base16_gui01 'ctermfg='..g:base16_cterm0B 'ctermbg='..g:base16_cterm01
exec 'hi GitGutterChange' 'guifg=#'..g:base16_gui0D 'guibg=#'..g:base16_gui01 'ctermfg='..g:base16_cterm0D 'ctermbg='..g:base16_cterm01
exec 'hi GitGutterDelete' 'guifg=#'..g:base16_gui08 'guibg=#'..g:base16_gui01 'ctermfg='..g:base16_cterm08 'ctermbg='..g:base16_cterm01
exec 'hi GitGutterChangeDelete' 'guifg=#'..g:base16_gui0E 'guibg=#'..g:base16_gui01 'ctermfg='..g:base16_cterm0E 'ctermbg='..g:base16_cterm01

" HTML highlighting
exec 'hi htmlBold' 'guifg=#'..g:base16_gui0A 'ctermfg='..g:base16_cterm0A
exec 'hi htmlItalic' 'guifg=#'..g:base16_gui0E 'ctermfg='..g:base16_cterm0E
exec 'hi htmlEndTag' 'guifg=#'..g:base16_gui05 'ctermfg='..g:base16_cterm05
exec 'hi htmlTag' 'guifg=#'..g:base16_gui05 'ctermfg='..g:base16_cterm05

" JavaScript highlighting
exec 'hi javaScript' 'guifg=#'..g:base16_gui05 'ctermfg='..g:base16_cterm05
exec 'hi javaScriptBraces' 'guifg=#'..g:base16_gui05 'ctermfg='..g:base16_cterm05
exec 'hi javaScriptNumber' 'guifg=#'..g:base16_gui09 'ctermfg='..g:base16_cterm09
" pangloss/vim-javascript highlighting
exec 'hi jsOperator' 'guifg=#'..g:base16_gui0D 'ctermfg='..g:base16_cterm0D
exec 'hi jsStatement' 'guifg=#'..g:base16_gui0E 'ctermfg='..g:base16_cterm0E
exec 'hi jsReturn' 'guifg=#'..g:base16_gui0E 'ctermfg='..g:base16_cterm0E
exec 'hi jsThis' 'guifg=#'..g:base16_gui08 'ctermfg='..g:base16_cterm08
exec 'hi jsClassDefinition' 'guifg=#'..g:base16_gui0A 'ctermfg='..g:base16_cterm0A
exec 'hi jsFunction' 'guifg=#'..g:base16_gui0E 'ctermfg='..g:base16_cterm0E
exec 'hi jsFuncName' 'guifg=#'..g:base16_gui0D 'ctermfg='..g:base16_cterm0D
exec 'hi jsFuncCall' 'guifg=#'..g:base16_gui0D 'ctermfg='..g:base16_cterm0D
exec 'hi jsClassFuncName' 'guifg=#'..g:base16_gui0D 'ctermfg='..g:base16_cterm0D
exec 'hi jsClassMethodType' 'guifg=#'..g:base16_gui0E 'ctermfg='..g:base16_cterm0E
exec 'hi jsRegexpString' 'guifg=#'..g:base16_gui0C 'ctermfg='..g:base16_cterm0C
exec 'hi jsGlobalObjects' 'guifg=#'..g:base16_gui0A 'ctermfg='..g:base16_cterm0A
exec 'hi jsGlobalNodeObjects' 'guifg=#'..g:base16_gui0A 'ctermfg='..g:base16_cterm0A
exec 'hi jsExceptions' 'guifg=#'..g:base16_gui0A 'ctermfg='..g:base16_cterm0A
exec 'hi jsBuiltins' 'guifg=#'..g:base16_gui0A 'ctermfg='..g:base16_cterm0A

" Mail highlighting
exec 'hi mailQuoted1' 'guifg=#'..g:base16_gui0A 'ctermfg='..g:base16_cterm0A
exec 'hi mailQuoted2' 'guifg=#'..g:base16_gui0B 'ctermfg='..g:base16_cterm0B
exec 'hi mailQuoted3' 'guifg=#'..g:base16_gui0E 'ctermfg='..g:base16_cterm0E
exec 'hi mailQuoted4' 'guifg=#'..g:base16_gui0C 'ctermfg='..g:base16_cterm0C
exec 'hi mailQuoted5' 'guifg=#'..g:base16_gui0D 'ctermfg='..g:base16_cterm0D
exec 'hi mailQuoted6' 'guifg=#'..g:base16_gui0A 'ctermfg='..g:base16_cterm0A
exec 'hi mailURL' 'guifg=#'..g:base16_gui0D 'ctermfg='..g:base16_cterm0D
exec 'hi mailEmail' 'guifg=#'..g:base16_gui0D 'ctermfg='..g:base16_cterm0D

" Markdown highlighting
exec 'hi markdownCode' 'guifg=#'..g:base16_gui0B 'ctermfg='..g:base16_cterm0B
exec 'hi markdownError' 'guifg=#'..g:base16_gui05 'guibg=#'..g:base16_gui00 'ctermfg='..g:base16_cterm05 'ctermbg='..g:base16_cterm00
exec 'hi markdownCodeBlock' 'guifg=#'..g:base16_gui0B 'ctermfg='..g:base16_cterm0B
exec 'hi markdownHeadingDelimiter' 'guifg=#'..g:base16_gui0D 'ctermfg='..g:base16_cterm0D

" NERDTree highlighting
exec 'hi NERDTreeDirSlash' 'guifg=#'..g:base16_gui0D 'ctermfg='..g:base16_cterm0D
exec 'hi NERDTreeExecFile' 'guifg=#'..g:base16_gui05 'ctermfg='..g:base16_cterm05

" PHP highlighting
exec 'hi phpMemberSelector' 'guifg=#'..g:base16_gui05 'ctermfg='..g:base16_cterm05
exec 'hi phpComparison' 'guifg=#'..g:base16_gui05 'ctermfg='..g:base16_cterm05
exec 'hi phpParent' 'guifg=#'..g:base16_gui05 'ctermfg='..g:base16_cterm05
exec 'hi phpMethodsVar' 'guifg=#'..g:base16_gui0C 'ctermfg='..g:base16_cterm0C

" Python highlighting
exec 'hi pythonOperator' 'guifg=#'..g:base16_gui0E 'ctermfg='..g:base16_cterm0E
exec 'hi pythonRepeat' 'guifg=#'..g:base16_gui0E 'ctermfg='..g:base16_cterm0E
exec 'hi pythonInclude' 'guifg=#'..g:base16_gui0E 'ctermfg='..g:base16_cterm0E
exec 'hi pythonStatement' 'guifg=#'..g:base16_gui0E 'ctermfg='..g:base16_cterm0E

" Ruby highlighting
exec 'hi rubyAttribute' 'guifg=#'..g:base16_gui0D 'ctermfg='..g:base16_cterm0D
exec 'hi rubyConstant' 'guifg=#'..g:base16_gui0A 'ctermfg='..g:base16_cterm0A
exec 'hi rubyInterpolationDelimiter' 'guifg=#'..g:base16_gui0F 'ctermfg='..g:base16_cterm0F
exec 'hi rubyRegexp' 'guifg=#'..g:base16_gui0C 'ctermfg='..g:base16_cterm0C
exec 'hi rubySymbol' 'guifg=#'..g:base16_gui0B 'ctermfg='..g:base16_cterm0B
exec 'hi rubyStringDelimiter' 'guifg=#'..g:base16_gui0B 'ctermfg='..g:base16_cterm0B

" SASS highlighting
exec 'hi sassidChar' 'guifg=#'..g:base16_gui08 'ctermfg='..g:base16_cterm08
exec 'hi sassClassChar' 'guifg=#'..g:base16_gui09 'ctermfg='..g:base16_cterm09
exec 'hi sassInclude' 'guifg=#'..g:base16_gui0E 'ctermfg='..g:base16_cterm0E
exec 'hi sassMixing' 'guifg=#'..g:base16_gui0E 'ctermfg='..g:base16_cterm0E
exec 'hi sassMixinName' 'guifg=#'..g:base16_gui0D 'ctermfg='..g:base16_cterm0D

" Signify highlighting
exec 'hi SignifySignAdd' 'guifg=#'..g:base16_gui0B 'guibg=#'..g:base16_gui01 'ctermfg='..g:base16_cterm0B 'ctermbg='..g:base16_cterm01
exec 'hi SignifySignChange' 'guifg=#'..g:base16_gui0D 'guibg=#'..g:base16_gui01 'ctermfg='..g:base16_cterm0D 'ctermbg='..g:base16_cterm01
exec 'hi SignifySignDelete' 'guifg=#'..g:base16_gui08 'guibg=#'..g:base16_gui01 'ctermfg='..g:base16_cterm08 'ctermbg='..g:base16_cterm01

" Spelling highlighting
exec 'hi SpellBad' 'guisp=#'..g:base16_gui08 'gui=undercurl' 'cterm=undercurl'
exec 'hi SpellLocal' 'guisp=#'..g:base16_gui0C 'gui=undercurl' 'cterm=undercurl'
exec 'hi SpellCap' 'guisp=#'..g:base16_gui0D 'gui=undercurl' 'cterm=undercurl'
exec 'hi SpellRare' 'guisp=#'..g:base16_gui0E 'gui=undercurl' 'cterm=undercurl'

" Startify highlighting
exec 'hi StartifyBracket' 'guifg=#'..g:base16_gui03 'ctermfg='..g:base16_cterm03
exec 'hi StartifyFile' 'guifg=#'..g:base16_gui07 'ctermfg='..g:base16_cterm07
exec 'hi StartifyFooter' 'guifg=#'..g:base16_gui03 'ctermfg='..g:base16_cterm03
exec 'hi StartifyHeader' 'guifg=#'..g:base16_gui0B 'ctermfg='..g:base16_cterm0B
exec 'hi StartifyNumber' 'guifg=#'..g:base16_gui09 'ctermfg='..g:base16_cterm09
exec 'hi StartifyPath' 'guifg=#'..g:base16_gui03 'ctermfg='..g:base16_cterm03
exec 'hi StartifySection' 'guifg=#'..g:base16_gui0E 'ctermfg='..g:base16_cterm0E
exec 'hi StartifySelect' 'guifg=#'..g:base16_gui0C 'ctermfg='..g:base16_cterm0C
exec 'hi StartifySlash' 'guifg=#'..g:base16_gui03 'ctermfg='..g:base16_cterm03
exec 'hi StartifySpecial' 'guifg=#'..g:base16_gui03 'ctermfg='..g:base16_cterm03

" Java highlighting
exec 'hi javaOperator' 'guifg=#'..g:base16_gui0D 'ctermfg='..g:base16_cterm0D
