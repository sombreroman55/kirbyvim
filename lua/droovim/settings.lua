local o = vim.opt

o.termguicolors = true
o.encoding = "utf-8"
o.laststatus = 2
o.ignorecase = true
o.smartcase = true
o.compatible = false
vim.cmd('filetype plugin on')
o.syntax = "on"
o.textwidth = 100

-- Indentation
o.wrap = false
o.expandtab = true
o.shiftround = true
o.shiftwidth = 2
o.tabstop = 2
o.softtabstop = 2
o.smartindent = true

-- Line numbers
o.number = true
o.relativenumber = true

o.showmatch = true
o.matchtime = 3
o.autoindent = true
o.lazyredraw = true

-- UI settings
o.background = "dark"
o.hlsearch = false
o.showcmd = true
o.cursorline = true
o.cursorcolumn = true
o.scrolloff = 999
o.wildmenu = true
o.numberwidth = 8
o.colorcolumn = { 81, 121 }

-- Misc
o.tabpagemax = 50
o.mouse = nil

-- backups
o.swapfile = true
o.undofile = true
o.writebackup = true
o.backup = false
o.backupcopy = 'auto'
o.backupdir = '/home/droo/backups/vim/tilde'
o.directory = '/home/droo/backups/vim/swap'
o.undodir = '/home/droo/backups/vim/undo'
