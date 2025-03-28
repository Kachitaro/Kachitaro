vim.opt.expandtab = true -- Dùng spaces thay vì tab
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

-- Thiết lập highlight màu cho line number
vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "white" })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#ead84e" })

vim.opt.clipboard = "unnamedplus" -- Dùng clipboard hệ thống
vim.opt.hlsearch = true
vim.opt.incsearch = true

