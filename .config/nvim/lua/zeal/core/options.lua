vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

--line numbers
opt.relativenumber = true
opt.number = true

--tab & indentation
opt.tabstop = 2 --set tab equal to x amount of spaces
opt.shiftwidth = 2 --set indent equal to x amount of spaces
opt.expandtab = true --set tab to spaces
opt.autoindent = true --set whether indent from current line will carry to next line

opt.wrap = false

--search settings
opt.ignorecase = true
opt.smartcase = true --mixed case searches assumes case sensitive search

opt.cursorline = true

--turn on termguicolors for tokynight colorscheme to work
--(must use true color terminal)
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes" --show sing column so that text doesnt shift

--backspace
opt.backspace = "indent,eol,start" --allow backspace on indent

--clipboard
opt.clipboard:append("unnamedplus") --use system clipboard as default register

--split windows
opt.splitright = true
opt.splitbelow = true
