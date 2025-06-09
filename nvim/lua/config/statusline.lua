--  @file   statusline.lua
--  @brief  Custom statusline without plugin
--  @author Joseph Simeon
--  @date   16-03-2025 17:11:29

vim.opt.laststatus = 2
vim.opt.cmdheight = 1
vim.cmd([[
    set noshowmode
]])

local modes = {
    ["n"]   = "NORMAL",
    ["no"]  = "NORMAL",
    ["v"]   = "VISUAL",
    ["V"]   = "VISUAL LINE",
    ["[]"]  = "VISUAL BLOCK",
    ["i"]   = "INSERT",
    ["R"]   = "REPLACE",
    ["Rv"]  = "VISUAL REPLACE",
    ["c"]   = "COMMAND",
    ["cv"]  = "VIM EX",
    ["ce"]  = "EX",
    ["r"]   = "PROMPT",
    ["rm"]  = "MOAR",
    ["r?"]  = "CONFIRM",
    ["!"]   = "SHELL",
    ["t"]   = "TERMINAL",
}
local function mode()
    local current_mode = vim.api.nvim_get_mode().mode
    return string.format(" %s ", modes[current_mode]):upper()
end

-- showing git requires gitsigns install
local function git()
    local signs = vim.b.gitsigns_status_dict or {head = '', added = 0, changed = 0, removed = 0}
    local is_head_empty = signs.head ~= ''

    return is_head_empty and string.format(
        '+%s ~%s -%s <⎇ %s ' , 
        signs.added, signs.changed, signs.removed, signs.head
    ) or ''
end

local function filepath()
  local fpath = vim.fn.fnamemodify(vim.fn.expand "%", ":~:.:h")
  if fpath == "" or fpath == "." then
      return " "
  end

  return string.format("%%<%s/", fpath)
end

local function filename()
  local fname = vim.fn.expand "%:t"
  if fname == "" then
      return ""
  end
  return fname .. " "
end

local function filetype()
    return string.format(" %s ", vim.bo.filetype):upper()
end

local function lineinfo()
    if vim.bo.filetype == "alpha" then
        return ""
    end
  return " %P %l:%c "
end

Statusline = {}
Statusline.active = function()
    return table.concat {
        "%#StatusLine#",
        mode(),
        git(),
        "%#Normal# ",
        filepath(),
        filename(),
        "%=%#StatusLineExtra#",
        "%#Normal#",
        filetype(),
        lineinfo(),
    }
end
function Statusline.inactive()
    return " %F"
end
Statusline.short = function()
    return table.concat {
        "%#StatusLine#",
        mode(),
        "%#Normal# ",
        ' NETRW ',
        "%=%#StatusLineExtra#",
        "%#Normal#",
        lineinfo(),
    }
end

vim.api.nvim_exec([[
    augroup Statusline
    au!
    au WinEnter,BufEnter * setlocal statusline=%!v:lua.Statusline.active()
    au WinLeave,BufLeave * setlocal statusline=%!v:lua.Statusline.inactive()
    au WinEnter,BufEnter,FileType netrw setlocal statusline=%!v:lua.Statusline.short()
    augroup END
]], false)
