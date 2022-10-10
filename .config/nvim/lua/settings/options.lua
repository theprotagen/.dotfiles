local g = vim.g
local o = vim.opt

-- Global
g.mapleader = ' '
g.maplocalleader = ' '

o.showtabline = 2
o.scrolloff = 5
o.mouse = 'a'
o.backupcopy = 'yes'
o.undolevels = 1000
o.showmode = false
o.hidden = true
o.splitright = true
o.splitbelow = true
o.wrapscan = true
o.backup = false
o.writebackup = false
o.showcmd = true
o.showmatch = true
o.ignorecase = true
o.hlsearch = true
o.smartcase = true
o.errorbells = false
o.joinspaces = false
o.title = true
o.lazyredraw = true
o.encoding = 'utf-8'
o.completeopt = { 'menu', 'menuone', 'noselect' }
o.clipboard = 'unnamedplus'
o.laststatus = 3
o.timeoutlen = 500
o.splitkeep = 'screen'
o.autoindent = true
o.smartindent = false

-- Buffer
o.fileformat = 'unix'
o.tabstop = 2
o.softtabstop = 2
o.swapfile = false
o.undofile = false
o.expandtab = true
o.shiftwidth = 2

-- Window
o.number = true
o.colorcolumn = '+1'
o.foldmethod = 'indent'
o.foldlevel = 1
o.list = false
o.foldnestmax = 10
o.signcolumn = 'yes'
o.relativenumber = true
o.foldenable = false
o.cursorline = true
