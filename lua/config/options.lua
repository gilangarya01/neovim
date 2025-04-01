local g = vim.g
local opt = vim.opt

-- Editor options

opt.clipboard = "unnamedplus"
opt.syntax = "on"
opt.autoindent = true
opt.ruler = true
opt.mouse = "a"
opt.termguicolors = true

-- Encoding
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

-- Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

-- UI Enhancements
opt.number = true         -- Enable line numbers
opt.relativenumber = true -- Relative line numbers
opt.cursorline = true     -- Highlight the current line
opt.termguicolors = true  -- Enable 24-bit RGB colors
opt.signcolumn = "yes"    -- Always show sign column

-- Searching
opt.ignorecase = true -- Ignore case when searching
opt.smartcase = true  -- Case-sensitive if uppercase is used

-- Splits
opt.splitbelow = true -- Split below
opt.splitright = true -- Split right

-- Undo & Backup
opt.undofile = true
opt.backup = false
opt.swapfile = false

-- Scrolloff
opt.scrolloff = 8
