# xcode dark colour scheme
## Table of Contents
- [Options](#Options)
    - [Comments](#Comments)
        - [Green comments](#Green-comments)
        - [Italic comments](#Italic-comments)
    - [Colors](#Colors)
        - [Low contrast](#Low-contrast)
        - [High contrast](#High-contrast)
        - [Function colour swap](#Function-colour-swap)
        - [Type colour swap](#Type-colour-swap)
        - [Btter highlighting](#Better-highlighting)

## Options
### Comments
#### Green comments
```vimrc
g:xcode_green_comments
```
> Set to 1 for the comments to be swapped from the standard comment colour of grey (terminal) / slate (gui) and standard special comment colour of light grey (terminal) / light slate (gui) to green and light green respectively, below is the command you can add to your vimrc.

```vimrc
let g:xcode_green_comments=1
```

#### Italic comments
```vimrc
g:xcode_italic_comments
```
> Set to 1 for the comments and special comments to be italic as well as their standard settings (special comments will be italic and bold), below is the command you can add to your vimrc.

```vimrc
let g:xcode_italic_comments=1
```

### Colours
#### Low contrast
```vimrc
g:xcode_low_contrast
```
> Set to 1 for the colour theme to be low contrast, note that having both 'g:xocde_low_contrast' and 'g:xcode_high_contrast' set to 1 will cancel eachother out, below is the command you can add to your vimrc.

```vimrc
let g:xcode_low_contrast=1
```

#### High contrast
```vimrc
g:xcode_high_contrast
```
> Set to 1 for the colour theme to be high contrast, note that having both 'g:xcode_high_contrast' and 'g:xcode_low_contrast' set to 1 will cancel eachother out, below is the command you can add to your vimrc.

```vimrc
let g:xcode_high_contrast=1
```

#### Function colour swap
```vimrc
g:xcode_swap_function_colour
```
> Set to 1 for the functions to be swapped from a teal to a purple, below is the command you can add to your vimrc.

```vimrc
let g:xcode_swap_function_colour=1
```

#### Type colour swap
```vimrc
g:xcode_swap_type_colour
```
> Set to 1 for the types to be swapped from a teal to a purple, below is the command you can add to your vimrc.

```vimrc
let g:xcode_swap_type_colour=1
```

#### Better highlighting
```vimrc
g:xcode_better_paren_highlight
```
> Set to 1 for the background colour of matching braces, parentheses, and brackets to have a highlight colour of blue instead of yellow, as it is less jarring, below is the command you can add to your vimrc.

```vimrc
let g:xcode_better_paren_highlight=1
```


