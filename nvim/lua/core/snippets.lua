--  @file   snippets.lua
--  @brief  Prewritten text
--  @author Joseph Simeon
--  @date   16-05-2025 16:53

vim.cmd([[
    nnoremap ,cdocc     gg
                        \A///<Tab>@file<Tab><C-R>=expand("%:t")<CR><CR>
                        \<C-u>///<Tab>@brief<CR>
                        \<C-u>///<Tab>@author<Tab>Joseph Simeon<CR>
                        \<C-u>///<Tab>@date<Tab><C-R>=strftime('%d-%m-%Y %H:%M:%S')<CR><Esc>
                        \ggjA<Tab>

    nnoremap ,cdoch     GA<CR><C-u><CR>
                        \#ifndef<Tab>__<C-R>=toupper(expand("%:r"))<CR>_H__<CR>
                        \#define<Tab>__<C-R>=toupper(expand("%:r"))<CR>_H__<CR><CR>
                        \#endif<CR>
                        \// <C-R>=expand("%:t")<CR><Esc>

    nnoremap ,cdochpp   <Esc>2kA#ifdef __cplusplus<NL>
                        \extern "C"<NL>
                        \{<NL>
                        \#endif<NL><NL>
                        \#ifdef __cplusplus<NL>
                        \}<NL>
                        \#endif<Esc>3kA

    nnoremap ,luadoc    gg
                        \i--<Tab>@file<Tab><C-R>=expand("%:t")<CR><CR>
                        \<C-u>--<Tab>@brief<CR>
                        \<C-u>--<Tab>@author<Tab>Joseph Simeon<CR>
                        \<C-u>--<Tab>@date<Tab><C-R>=strftime('%d-%m-%Y %H:%M:%S')<CR><Esc>
                        \ggjA<Tab>
]])
