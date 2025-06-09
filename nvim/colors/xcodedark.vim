"	@file	xcodedark
"	@brief	Color scheme based on xcode dark
"	@author	Joseph Simeon
"	@date	16-03-2025

highlight clear
if exists("syntax on")
    syntax reset
endif

set t_Co=256
set background=dark
let g:colors_name="xcodedark"

" options
" 	>>> green comments
if !exists('g:xcode_green_comments')
    let g:xcode_green_comments=0
endif
"   >>> italic comments
if !exists('g:xcode_italic_comments')
    let g:xcode_italic_comments=0
endif
"   >>> colour contrast
if !exists('g:xcode_low_contrast')
    let g:xcode_low_contrast=0
endif
if !exists('g:xcode_high_contrast')
    let g:xcode_high_contrast=0
endif
if g:xcode_low_contrast && g:xcode_high_contrast
    let g:xcode_low_contrast=0
    let g:xcode_high_contrast=0
endif
"   >>> swap type colour
if !exists('g:xcode_swap_type_colour')
    let g:xcode_swap_type_colour=0
endif
" >>> Swap function colour
if !exists('g:xcode_swap_function_colour')
    let g:xcode_swap_function_colour=0
endif
" >>> Matching braces, parentheses, brackets with a better highlight colour
if !exists('g:xcode_better_paren_highlight')
    let g:xcode_better_paren_highlight=0
endif

" Define reusable colour values
let s:background="#292a30"
let s:background_light="#3b3c45"
let s:background_lighter="#484954"
let s:foreground="#dfdfe0"
let s:selection="#646f83"
let s:invisibles="#53606e"
let s:current_line="#2e3239"
let s:comments="#7d8a96"
let s:comment_keywords="#9daab7"
let s:strings="#ff8170"
let s:characters="#d9c97c"
let s:numbers="#d9c97c"
let s:keywords="#ff7ab2"
let s:preprocessor="#ffca9c"
let s:urls="#6393f4"
let s:parentheses="#fef937"
let s:attributes="#cc9768"
let s:types="#69dafa"
let s:functions="#4eb0cc"
let s:special="#acf2e4"
let s:other_types="#d8bbff"
let s:other_functions="#a578d9"
let s:other_special="#78c2b3"
let s:heading="#bb2ca2"

if g:xcode_low_contrast
    let s:background="#353540"
    let s:background_light="#3f3f4d"
    let s:background_lighter="#4a4a59"
    let s:foreground="#a6a6a6"
    let s:selection="#7b8ca8"
    let s:invisibles="#53606e"
    let s:current_line="#2e3239"
    let s:comments="#7d8a96"
    let s:comment_keywords="#9daab7"
    let s:strings="#ffaea3"
    let s:characters="#d9d0a7"
    let s:numbers="#d9d0a7"
    let s:keywords="#ff85b8"
    let s:preprocessor="#ffca9c"
    let s:urls="#aec5f5"
    let s:parentheses="#fffb85"
    let s:attributes="#ccac91"
    let s:types="#b4ebfa"
    let s:functions="#8bbecc"
    let s:special="#c4f2e9"
    let s:other_types="#e6d4ff"
    let s:other_functions="#bca3d9"
    let s:other_special="#9fc2bb"
    let s:heading="#bb2ca2"
elseif g:xcode_high_contrast

    let s:background="#1f1f25"
    let s:background_light="#292a30"
    let s:background_lighter="#31313b"
    let s:foreground="#ffffff"
    let s:selection="#444d5d"
    let s:invisibles="#53606e"
    let s:current_line="#2e3239"
    let s:comments="#8a98a6"
    let s:comment_keywords="#a9adba"
    let s:strings="#ff8a7a"
    let s:characters="#d9c668"
    let s:numbers="#d9c668"
    let s:keywords="#ff85b8"
    let s:preprocessor="#ffa150"
    let s:urls="#85adff"
    let s:parentheses="#fef937"
    let s:attributes="#e8b68b"
    let s:types="#60c5e2"
    let s:functions="#4ec4e6"
    let s:special="#aaefe1"
    let s:other_types="#e5ceff"
    let s:other_functions="#cca0fe"
    let s:other_special="#7cbeb2"
    let s:heading="#bb2ca2"
endif

" Define reusable 256 colour values
let s:background_256="236"
let s:background_light_256="238"
let s:background_lighter_256="240"
let s:foreground_256="253"
let s:selection_256="244"
let s:invisibles_256="59"
let s:current_line_256="234"
let s:comments_256="244"
let s:comment_keywords_256="249"
let s:strings_256="210"
let s:characters_256="186"
let s:numbers_256="186"
let s:keywords_256="212"
let s:preprocessor_256="173"
let s:urls_256="68"
let s:parentheses_256="226"
let s:attributes_256="180"
let s:types_256="117"
let s:functions_256="74"
let s:special_256="159"
let s:other_types_256="183"
let s:other_functions_256="140"
let s:other_special_256="109"
let s:heading_256="127"

if g:xcode_low_contrast
    let s:background_256="238"
    let s:background_light_256="240"
    let s:background_lighter_256="242"
    let s:foreground_256="250"
    let s:selection_256="67"
    let s:invisibles_256="59"
    let s:current_line_256="234"
    let s:comments_256="244"
    let s:comment_keywords_256="246"
    let s:strings_256="217"
    let s:characters_256="187"
    let s:numbers_256="187"
    let s:keywords_256="224"
    let s:preprocessor_256="223"
    let s:urls_256="189"
    let s:parentheses_256="228"
    let s:attributes_256="180"
    let s:types_256="152"
    let s:functions_256="110"
    let s:special_256="195"
    let s:other_types_256="225"
    let s:other_functions_256="183"
    let s:other_special_256="116"
    let s:heading_256="127"
elseif g:xcode_high_contrast
    let s:background_256="234"
    let s:background_light_256="236"
    let s:background_lighter_256="238"
    let s:foreground_256="255"
    let s:selection_256="240"
    let s:invisibles_256="59"
    let s:current_line_256="234"
    let s:comments_256="244"
    let s:comment_keywords_256="246"
    let s:strings_256="210"
    let s:characters_256="185"
    let s:numbers_256="185"
    let s:keywords_256="211"
    let s:preprocessor_256="173"
    let s:urls_256="111"
    let s:parentheses_256="226"
    let s:attributes_256="223"
    let s:types_256="45"
    let s:functions_256="117"
    let s:special_256="122"
    let s:other_types_256="183"
    let s:other_functions_256="177"
    let s:other_special_256="116"
    let s:heading_256="127"
endif

" Colour terms
let s:selection_term="italic"

" Colour options
if g:xcode_green_comments
    let s:comments="#84b360"
    let s:comment_keywords="#afe686"
    let s:comments_256="71"
    let s:comment_keywords_256="77"

    if g:xcode_low_contrast
    elseif g:xcode_high_contrast
	let s:comments="#8dbf67"
	let s:comment_keywords="#b3e889"
	let s:comments_256="78"
	let s:comment_keywords_256="84"
    endif
endif
if g:xcode_swap_type_colour
    let s:temp=s:types
    let s:temp_256=s:types_256
    let s:types=s:other_types
    let s:types_256=s:other_types_256
    let s:other_types=s:temp
    let s:other_types_256=s:temp_256
endif
if g:xcode_swap_function_colour
    let s:temp=s:functions
    let s:temp_256=s:functions_256
    let s:functions=s:other_functions
    let s:functions_256=s:other_functions_256
    let s:other_functions=s:temp
    let s:other_functions_256=s:temp_256
endif

if g:xcode_better_paren_highlight
    let s:parentheses=s:urls
    let s:parentheses_256=s:urls_256
endif

" Define resuable terms
let s:comments_term="NONE"
let s:comment_keywords_term="bold"

" Define options
if g:xcode_italic_comments
    let s:comments_term="italic"
    let s:comment_keywords_term="bold,italic"
endif

" List of stable colours
let s:black="#000000"
let s:black_256="0"

" Colourscheme
"   <<< Editor settings
exe 'hi Normal          guifg='s:foreground
exe 'hi Normal          guibg='s:background
exe 'hi Normal          gui=NONE'
exe 'hi Normal          ctermfg='s:foreground_256
exe 'hi Normal          ctermbg='s:background_256
exe 'hi Normal          cterm=NONE'

exe 'hi Cursor		    guifg='s:background
exe 'hi Cursor          guibg='s:foreground
exe 'hi Cursor          gui=NONE'	
exe 'hi Cursor		    ctermfg='s:background_256
exe 'hi Cursor          ctermbg='s:foreground_256
exe 'hi Cursor          gui=NONE'

exe 'hi CursorLine	    guifg=NONE'
exe 'hi CursorLine      guibg='s:background_light
exe 'hi CursorLine      gui=NONE'
exe 'hi CursorLine	    ctermfg=NONE'
exe 'hi CursorLine      ctermbg='s:background_light_256
exe 'hi CursorLine      cterm=NONE'

exe 'hi ColorColumn	    guifg=NONE'
exe 'hi ColorColumn     guibg='s:background_light
exe 'hi ColorColumn     gui=NONE'
exe 'hi ColorColumn	    ctermfg=NONE'
exe 'hi ColorColumn     ctermbg='s:background_light_256
exe 'hi ColorColumn     cterm=NONE'

" <<< Number column
exe 'hi LineNr		    guifg='s:invisibles
exe 'hi LineNr          guibg=NONE'
exe 'hi LineNr          gui=NONE'	
exe 'hi LineNr		    ctermfg='s:invisibles_256
exe 'hi LineNr		    ctermbg=NONE'
exe 'hi LineNr          cterm=NONE'

exe 'hi CursorLineNr	guifg='s:foreground
exe 'hi CursorLineNr	guibg='s:background
exe 'hi CursorLineNr	gui=NONE'
exe 'hi CursorLineNr	ctermfg='s:foreground_256
exe 'hi CursorLineNr	ctermbg='s:background_256
exe 'hi CursorLineNr	cterm=NONE'

exe 'hi CursorColumn	guifg=NONE'
exe 'hi CursorColumn    guibg='s:selection
exe 'hi CursorColumn    gui=NONE'
exe 'hi CursorColumn	ctermfg=NONE'
exe 'hi CursorColumn    ctermbg='s:selection_256
exe 'hi CursorColumn    cterm=NONE'

exe 'hi SignColumn	    guifg='s:invisibles
exe 'hi SignColumn      guibg=NONE'
exe 'hi SignColumn      gui=NONE'
exe 'hi SignColumn	    ctermfg='s:invisibles_256
exe 'hi SignColumn      ctermbg=NONE'
exe 'hi SignColumn      cterm=NONE'

exe 'hi FoldColumn	    guifg='s:invisibles
exe 'hi FoldColumn      guibg=NONE'
exe 'hi FoldColumn      gui=NONE'
exe 'hi FoldColumn	    ctermfg='s:invisibles_256
exe 'hi FoldColumn      ctermbg=NONE'
exe 'hi FoldColumn      cterm=NONE'

exe 'hi Folded		    guifg='s:invisibles
exe 'hi Folded          guibg=NONE'
exe 'hi Folded          gui=NONE'
exe 'hi Folded		    ctermfg='s:invisibles_256
exe 'hi Folded          ctermbg=NONE'
exe 'hi Folded          cterm=NONE'

" <<< Window and tab delimiters
exe 'hi VertSplit	    guifg='s:current_line
exe 'hi VertSplit       guibg='s:current_line
exe 'hi VertSplit       gui=NONE'
exe 'hi VertSplit	    ctermfg='s:current_line_256
exe 'hi VertSplit       ctermbg='s:current_line_256
exe 'hi VertSplit       cterm=NONE'

" <<< File navigation and searching
exe 'hi Directory	    guifg='s:types
exe 'hi Directory       guibg=NONE'
exe 'hi Directory       gui=NONE'
exe 'hi Directory	    ctermfg='s:types_256
exe 'hi Directory       ctermbg=NONE'
exe 'hi Directory       cterm=NONE'

exe 'hi Search		    guifg='s:foreground
exe 'hi Search          guibg='s:background_light
exe 'hi Search          gui=NONE'
exe 'hi Search		    ctermfg='s:foreground_256
exe 'hi Search          ctermbg='s:background_light_256
exe 'hi Search          cterm=NONE'

exe 'hi IncSearch	    guifg='s:background
exe 'hi IncSearch       guibg='s:urls
exe 'hi IncSearch       gui=NONE'
exe 'hi IncSearch	    ctermfg='s:background_256
exe 'hi IncSearch       ctermbg='s:urls_256
exe 'hi IncSearch       cterm=NONE'

" <<< Prompt and status
exe 'hi StatusLine	    guifg='s:foreground
exe 'hi StatusLine      guibg='s:background_lighter
exe 'hi StatusLine      gui=NONE'
exe 'hi StatusLine	    ctermfg='s:foreground_256
exe 'hi StatusLine      ctermbg='s:background_lighter_256
exe 'hi StatusLine      cterm=NONE'

exe 'hi StatusLineNC	guifg=#7d8a96'
exe 'hi StatusLineNC    guibg='s:background_light
exe 'hi StatusLineNC    gui=NONE'
exe 'hi StatusLineNC	ctermfg=247'
exe 'hi StatusLineNC    ctermbg='s:background_light_256
exe 'hi StatusLineNC    cterm=NONE'

exe 'hi WildMenu	    guifg='s:foreground
exe 'hi WildMenu        guibg='s:urls
exe 'hi WildMenu        gui=NONE'
exe 'hi WildMenu	    ctermfg='s:foreground_256
exe 'hi WildMenu        ctermbg='s:urls_256
exe 'hi WildMenu        cterm=NONE'

exe 'hi Question	    guifg='s:invisibles
exe 'hi Question        guibg=NONE'
exe 'hi Question        gui=NONE'
exe 'hi Question	    ctermfg='s:invisibles_256
exe 'hi Question        ctermbg=NONE'
exe 'hi Question        cterm=NONE'

exe 'hi Title		    guifg='s:heading
exe 'hi Title           guibg=NONE'
exe 'hi Title           gui=NONE'
exe 'hi Title		    ctermfg='s:heading_256
exe 'hi Title           ctermbg=NONE'
exe 'hi Title           cterm=NONE'

exe 'hi ModeMsg		    guifg='s:invisibles
exe 'hi ModeMsg         guibg=NONE'
exe 'hi ModeMsg         gui=NONE'
exe 'hi ModeMsg		    ctermfg='s:invisibles_256
exe 'hi ModeMsg         ctermbg=NONE'
exe 'hi ModeMsg         cterm=NONE'

exe 'hi MoreMsg		    guifg='s:keywords
exe 'hi MoreMsg         guibg=NONE'
exe 'hi MoreMsg         gui=NONE'
exe 'hi MoreMsg		    ctermfg='s:keywords_256
exe 'hi MoreMsg         ctermbg=NONE'
exe 'hi MoreMsg         cterm=NONE'

" <<< visual aid
exe 'hi MatchParen	    guifg='s:background
exe 'hi MatchParen      guibg='s:parentheses
exe 'hi MatchParen      gui=NONE'
exe 'hi MatchParen	    ctermfg='s:background_256
exe 'hi MatchParen      ctermbg='s:parentheses_256
exe 'hi MatchParen      cterm=NONE'

exe 'hi Visual		    guifg=NONE'
exe 'hi Visual          guibg='s:background_lighter
exe 'hi Visual          gui=NONE'
exe 'hi Visual		    ctermfg=NONE'
exe 'hi Visual          ctermbg='s:background_lighter_256
exe 'hi Visual          cterm=NONE'

exe 'hi VisualNOS	    guifg=NONE'
exe 'hi VisualNOS       guibg='s:background_lighter
exe 'hi VisualNOS       gui=NONE'
exe 'hi VisualNOS	    ctermfg=NONE'
exe 'hi VisualNOS       ctermbg='s:background_lighter_256
exe 'hi VisualNOS       cterm=NONE'

exe 'hi NonText		    guifg='s:invisibles
exe 'hi NonText         guibg=NONE'
exe 'hi NonText         gui=NONE'
exe 'hi NonText		    ctermfg='s:invisibles_256
exe 'hi NonText         ctermbg=NONE'
exe 'hi NonText         cterm=NONE'

exe 'hi Todo		    guifg='s:special
exe 'hi Todo            guibg=NONE'
exe 'hi Todo            gui=bold'
exe 'hi Todo		    ctermfg='s:special_256
exe 'hi Todo            ctermbg=NONE'
exe 'hi Todo            cterm=bold'

exe 'hi Underlined	    guifg='s:urls
exe 'hi Underlined      guibg=NONE'
exe 'hi Underlined      gui=underline'
exe 'hi Underlined	    ctermfg='s:urls_256
exe 'hi Underlined      ctermbg=NONE'
exe 'hi Underlined      cterm=underline'

exe 'hi Error		    guifg='s:background
exe 'hi Error           guibg='s:strings
exe 'hi Error           gui=NONE'
exe 'hi Error		    ctermfg='s:background_256
exe 'hi Error           ctermbg='s:strings_256
exe 'hi Error           cterm=NONE'

exe 'hi ErrorMsg	    guifg='s:strings
exe 'hi ErrorMsg        guibg=NONE'
exe 'hi ErrorMsg        gui=NONE'
exe 'hi ErrorMsg	    ctermfg='s:strings_256
exe 'hi ErrorMsg        ctermbg=NONE'
exe 'hi ErrorMsg        cterm=NONE'

exe 'hi WarningMsg	    guifg='s:preprocessor
exe 'hi WarningMsg      guibg=NONE'
exe 'hi WarningMsg      gui=NONE'
exe 'hi WarningMsg	    ctermfg='s:preprocessor_256
exe 'hi WarningMsg      ctermbg=NONE'
exe 'hi WarningMsg      cterm=NONE'

exe 'hi Ignore		    guifg='s:invisibles
exe 'hi Ignore          guibg=NONE'
exe 'hi Ignore          gui=NONE'
exe 'hi Ignore		    ctermfg='s:invisibles_256
exe 'hi Ignore          ctermbg=NONE'
exe 'hi Ignore          cterm=NONE'

exe 'hi SpecialKey	    guifg='s:invisibles
exe 'hi SpecialKey      guibg=NONE'
exe 'hi SpecialKey      gui=NONE'
exe 'hi SpecialKey	    ctermfg='s:invisibles_256
exe 'hi SpecialKey      ctermbg=NONE'
exe 'hi SpecialKey      cterm=NONE'

" <<< Language highlights
exe 'hi Constant	    guifg='s:foreground
exe 'hi Constant        guibg=NONE'
exe 'hi Constant        gui=NONE'
exe 'hi Constant	    ctermfg='s:foreground_256
exe 'hi Constant        ctermbg=NONE'
exe 'hi Constant        cterm=NONE'

exe 'hi String		    guifg='s:strings
exe 'hi String          guibg=NONE'
exe 'hi String          gui=NONE'
exe 'hi String		    ctermfg='s:strings_256
exe 'hi String          ctermbg=NONE'
exe 'hi String          cterm=NONE'

exe 'hi StringDelimiter     guifg='s:strings
exe 'hi StringDelimiter guibg=NONE'
exe 'hi StringDelimiter gui=NONE'
exe 'hi StringDelimiter     ctermfg='s:strings_256
exe 'hi StringDelimiter ctermbg=NONE'
exe 'hi StringDelimiter cterm=NONE'

exe 'hi Character	    guifg='s:characters
exe 'hi Character       guibg=NONE'
exe 'hi Character       gui=NONE'
exe 'hi Character	    ctermfg='s:characters_256
exe 'hi Character       ctermbg=NONE'
exe 'hi Character       cterm=NONE'

exe 'hi Number		    guifg='s:numbers
exe 'hi Number          guibg=NONE'
exe 'hi Number          gui=NONE'
exe 'hi Number		    ctermfg='s:numbers_256
exe 'hi Number          ctermbg=NONE'
exe 'hi Number          cterm=NONE'

exe 'hi Boolean		    guifg='s:keywords
exe 'hi Boolean         guibg=NONE'
exe 'hi Boolean         gui=bold'
exe 'hi Boolean		    ctermfg='s:keywords_256
exe 'hi Boolean         ctermbg=NONE'
exe 'hi Boolean         cterm=bold'

exe 'hi Float		    guifg='s:numbers
exe 'hi Float           guibg=NONE'
exe 'hi Float           gui=NONE'
exe 'hi Float		    ctermfg='s:numbers_256
exe 'hi Float           ctermbg=NONE'
exe 'hi Float           cterm=NONE'

exe 'hi Identifier	    guifg='s:foreground
exe 'hi Identifier      guibg=NONE'
exe 'hi Identifier      gui=NONE'
exe 'hi Identifier	    ctermfg='s:foreground_256
exe 'hi Identifier      ctermbg=NONE'
exe 'hi Identifier      cterm=NONE'

exe 'hi Function	    guifg='s:functions
exe 'hi Function        guibg=NONE'
exe 'hi Function        gui=NONE'
exe 'hi Function	    ctermfg='s:functions_256
exe 'hi Function        ctermbg=NONE'
exe 'hi Function        cterm=NONE'

exe 'hi Statement	    guifg='s:keywords
exe 'hi Statement       guibg=NONE'
exe 'hi Statement       gui=NONE'
exe 'hi Statement	    ctermfg='s:keywords_256
exe 'hi Statement       ctermbg=NONE'
exe 'hi Statement       cterm=NONE'

exe 'hi Conditional	    guifg='s:keywords
exe 'hi Conditional     guibg=NONE'
exe 'hi Conditional     gui=bold'
exe 'hi Conditional	    ctermfg='s:keywords_256
exe 'hi Conditional     ctermbg=NONE'
exe 'hi Conditional     cterm=bold'

exe 'hi Repeat		    guifg='s:keywords
exe 'hi Repeat          guibg=NONE'
exe 'hi Repeat          gui=bold'
exe 'hi Repeat		    ctermfg='s:keywords_256
exe 'hi Repeat          ctermbg=NONE'
exe 'hi Repeat          cterm=bold'

exe 'hi Label		    guifg='s:keywords
exe 'hi Label           guibg=NONE'
exe 'hi Label           gui=bold'
exe 'hi Label		    ctermfg='s:keywords_256
exe 'hi Label           ctermbg=NONE'
exe 'hi Label           cterm=bold'

exe 'hi Operator	    guifg='s:foreground
exe 'hi Operator        guibg=NONE'
exe 'hi Operator        gui=NONE'
exe 'hi Operator	    ctermfg='s:foreground_256
exe 'hi Operator        ctermbg=NONE'
exe 'hi Operator        cterm=NONE'

exe 'hi Keyword		    guifg='s:comment_keywords
exe 'hi Keyword         guibg=NONE'
exe 'hi Keyword         gui=bold'
exe 'hi Keyword		    ctermfg='s:comment_keywords_256
exe 'hi Keyword         ctermbg=NONE'
exe 'hi Keyword         cterm=bold'

exe 'hi Exception	    guifg='s:keywords
exe 'hi Exception       guibg=NONE'
exe 'hi Exception       gui=bold'
exe 'hi Exception	    ctermfg='s:keywords_256
exe 'hi Exception       ctermbg=NONE'
exe 'hi Exception       cterm=NONE'

exe 'hi Comment		    guifg='s:comments
exe 'hi Comment         guibg=NONE'
exe 'hi Comment         gui='s:comments_term
exe 'hi Comment		    ctermfg='s:comments_256
exe 'hi Comment         ctermbg=NONE'
exe 'hi Comment         cterm='s:comments_term

exe 'hi Special		    guifg='s:special
exe 'hi Special         guibg=NONE'
exe 'hi Special         gui=NONE'
exe 'hi Special		    ctermfg='s:special_256
exe 'hi Special         ctermbg=NONE'
exe 'hi Special         cterm=NONE'

exe 'hi SpecialChar	    guifg='s:special
exe 'hi SpecialChar     guibg=NONE'
exe 'hi SpecialChar     gui=NONE'
exe 'hi SpecialChar	    ctermfg='s:special_256
exe 'hi SpecialChar     ctermbg=NONE'
exe 'hi SpecialChar     cterm=NONE'

exe 'hi Tag		    guifg='s:special
exe 'hi Tag             guibg=NONE'
exe 'hi Tag             gui=NONE'
exe 'hi Tag		    ctermfg='s:special_256
exe 'hi Tag             ctermbg=NONE'
exe 'hi Tag             cterm=NONE'

exe 'hi Delimiter	    guifg='s:special
exe 'hi Delimiter       guibg=NONE'
exe 'hi Delimiter       gui=NONE'
exe 'hi Delimiter	    ctermfg='s:special_256
exe 'hi Delimiter       ctermbg=NONE'
exe 'hi Delimter        cterm=NONE'

exe 'hi SpecialComment	    guifg='s:comment_keywords
exe 'hi SpecailComment  guibg=NONE'
exe 'hi SpecialComment  gui='s:comment_keywords_term
exe 'hi SpecialComment 	    ctermfg='s:comment_keywords_256
exe 'hi SpecialComment  ctermbg=NONE'
exe 'hi SpecialComment  cterm='s:comment_keywords_term

exe 'hi Debug		    guifg='s:special
exe 'hi Debug           guibg=NONE'
exe 'hi Debug           gui=NONE'
exe 'hi Debug		    ctermfg='s:special_256
exe 'hi Debug           ctermbg=NONE'
exe 'hi Debug           cterm=NONE'

exe 'hi PreProc		    guifg='s:preprocessor
exe 'hi PreProc         guibg=NONE'
exe 'hi PreProc         gui=NONE'
exe 'hi PreProc		    ctermfg='s:preprocessor_256
exe 'hi PreProc         ctermbg=NONE'
exe 'hi PreProc         cterm=NONE'

exe 'hi Include		    guifg='s:preprocessor
exe 'hi Include         guibg=NONE'
exe 'hi Include         gui=bold'
exe 'hi Include		    ctermfg='s:preprocessor_256
exe 'hi Include         ctermbg=NONE'
exe 'hi Include         cterm=bold'

exe 'hi Define		    guifg='s:preprocessor
exe 'hi Define          guibg=NONE'
exe 'hi Define          gui=bold'
exe 'hi Define		    ctermfg='s:preprocessor_256
exe 'hi Define          ctermbg=NONE'
exe 'hi Define          cterm=bold'

exe 'hi Macro		    guifg='s:preprocessor
exe 'hi Macro           guibg=NONE'
exe 'hi Macro           gui=bold'
exe 'hi Macro		    ctermfg='s:preprocessor_256
exe 'hi Macro           ctermbg=NONE'
exe 'hi Macro           cterm=bold'

exe 'hi PreCondit	    guifg='s:preprocessor
exe 'hi PreCondit       guibg=NONE'
exe 'hi PreCondit       gui=NONE'
exe 'hi PreCondit	    ctermfg='s:preprocessor_256
exe 'hi PreCondit       ctermbg=NONE'
exe 'hi PreCondit       cterm=NONE'

exe 'hi Type		    guifg='s:types
exe 'hi Type            guibg=NONE'
exe 'hi Type            gui=bold'
exe 'hi Type		    ctermfg='s:types_256
exe 'hi Type            ctermbg=NONE'
exe 'hi Type            cterm=bold'

exe 'hi StorageClass	    guifg='s:types
exe 'hi StorageClass    guibg=NONE'
exe 'hi StorageClass    gui=bold'
exe 'hi StorageClass	    ctermfg='s:types_256
exe 'hi StorageClass    ctermbg=NONE'
exe 'hi StorageClass    cterm=bold'

exe 'hi Structure	    guifg='s:keywords
exe 'hi Structure       guibg=NONE'
exe 'hi Structure       gui=bold'
exe 'hi Structure	    ctermfg='s:keywords_256
exe 'hi Structure       ctermbg=NONE'
exe 'hi Strcuture       cterm=bold'

exe 'hi Typedef		    guifg='s:keywords
exe 'hi Typedef         guibg=NONE'
exe 'hi Typedef         gui=bold'
exe 'hi Typedef		    ctermfg='s:keywords_256
exe 'hi Typedef         ctermbg=NONE'
exe 'hi Typedef         cterm=bold'

" <<< Diff
exe 'hi DiffAdd		    guifg=#5ce65c'
exe 'hi DiffAdd         guibg=#143314'
exe 'hi DiffAdd         gui=NONE'
exe 'hi DiffAdd		    ctermfg=112'
exe 'hi DiffAdd         ctermbg=22'
exe 'hi DiffAdd         cterm=NONE'

exe 'hi DiffChange	    guifg=#e69c5c'
exe 'hi DiffChange      guibg=NONE'
exe 'hi DiffChange      gui=NONE'
exe 'hi DiffChange	    ctermfg=215'
exe 'hi DiffChange      ctermbg=NONE'
exe 'hi DiffChange      cterm=NONE'

exe 'hi DiffDelete	    guifg=#e66c5c'
exe 'hi DiffDelete      guibg=#331814'
exe 'hi DiffDelete      gui=NONE'
exe 'hi DiffDelete	    ctermfg=203'
exe 'hi DiffDelete      ctermbg=88'
exe 'hi DiffDelete      cterm=NONE'

exe 'hi DiffText	    guifg=#e69c5c'
exe 'hi DiffText        guibg=#332314'
exe 'hi DiffText        gui=NONE'
exe 'hi DiffText	    ctermfg=215'
exe 'hi DiffText        ctermbg=130'
exe 'hi DiffText        cterm=NONE'

" <<< Completion menu
exe 'hi Pmenu		    guifg='s:foreground
exe 'hi Pmenu           guibg='s:background
exe 'hi Pmenu           gui=NONE'
exe 'hi Pmenu		    ctermfg='s:foreground_256
exe 'hi Pmenu           ctermbg='s:background_256
exe 'hi Pmenu           cterm=NONE'

exe 'hi PmenuSel	    guifg='s:foreground
exe 'hi PmenuSel        guibg='s:urls
exe 'hi PmenuSel        gui=NONE'
exe 'hi PmenuSel	    ctermfg='s:foreground_256
exe 'hi PmenuSel        ctermbg='s:urls_256
exe 'hi PmenuSel        cterm=NONE'

exe 'hi PmenuSbar	    guifg='s:background_light
exe 'hi PmenuSbar       guibg='s:background_light
exe 'hi PmneuSbar       gui=NONE'
exe 'hi PmenuSbar	    ctermfg='s:background_light_256
exe 'hi PmenuSbar       ctermbg='s:background_light_256
exe 'hi PmenuSbar       cterm=NONE'

exe 'hi PmenuThumb	    guifg='s:background_lighter
exe 'hi PmenuThumb      guibg='s:background_lighter
exe 'hi PmenuThumb      gui=NONE'
exe 'hi PmenuThumb	    ctermfg='s:background_lighter_256
exe 'hi PmenuThumb      ctermbg='s:background_lighter_256
exe 'hi PmenuThumb      cterm=NONE'

" <<< Spelling
exe 'hi SpellBad	    guifg='s:preprocessor
exe 'hi SpellBad        guibg=NONE'
exe 'hi SpellBad        gui=undercurl'
exe 'hi SpellBad	    ctermfg='s:preprocessor_256
exe 'hi SpellBad        ctermbg=NONE'
exe 'hi SpellBad        cterm=undercurl'

exe 'hi SpellCap	    guifg='s:special
exe 'hi SpellCap        guibg=NONE'
exe 'hi SpellCap        gui=undercurl'
exe 'hi SpellCap	    ctermfg='s:special_256
exe 'hi SpellCap        ctermbg=NONE'
exe 'hi SpellCap        cterm=undercurl'

exe 'hi SpellLocal	    guifg='s:types
exe 'hi SpellLocal      guibg=NONE'
exe 'hi SpellLocal      gui=undercurl'
exe 'hi SpellLocal	    ctermfg='s:types_256
exe 'hi SpellLocal      ctermbg=NONE'
exe 'hi SpellLocal      cterm=undercurl'

exe 'hi SpellRare	    guifg='s:other_types
exe 'hi SpellRare       guibg=NONE'
exe 'hi SpellRare       gui=undercurl'
exe 'hi SepllRare	    ctermfg='s:other_types_256
exe 'hi SpellRare       ctermbg=NONE'
exe 'hi SpellRare       cterm=undercurl'

" <<< Link highlights
hi! link Terminal			Normal
hi! link TabLine			StatusLineNC
hi! link TabLineFill			StatusLineNC
hi! link TabLineSel			StatusLine

" <<< Link doxygen specific highlights
hi! link doxygenSpecial			SpecialComment
hi! link doxygenSpecialHeading		Comment
hi! link doxygenSpecialOneLineDesc	Comment
hi! link doxygenSpecialTypeOneLineDesc	Comment
hi! link doxygenBrief			Comment
hi! link doxygenOther			SpecialComment
hi! link doxygenBOther			SpecialComment

if (has('terminal') && has('termguicolors')) || has('gui_running')
    let g:terminal_ansi_colors = [
	\ s:background_lighter,
	\ s:strings,
	\ s:other_special,
	\ s:characters,
	\ s:functions,
	\ s:keywords,
	\ s:other_types,
	\ s:foreground,
	\ s:comments,
	\ s:strings,
	\ s:special,
	\ s:preprocessor,
	\ s:types,
	\ s:keywords,
	\ s:other_types,
	\ s:foreground,
	\ ]
endif
