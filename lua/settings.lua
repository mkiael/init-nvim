local opt = vim.opt

opt.wrap = false
opt.linebreak = true
opt.backspace = 'indent,eol,start'
opt.autoindent = true
opt.copyindent = true
opt.number = true
opt.relativenumber = true
opt.shiftround = true
opt.hidden = true
opt.scrolloff = 5
opt.showbreak = '↪'
opt.colorcolumn = '80'
opt.signcolumn = 'number'
opt.list = true
opt.listchars = 'tab:>.,trail:.,extends:#,nbsp:.'
opt.tabstop = 3
opt.shiftwidth = 3
opt.softtabstop = 3
opt.expandtab = true
opt.smarttab = true
opt.history = 1000
opt.undolevels = 1000
opt.title = true
opt.visualbell = false
opt.errorbells = false
opt.swapfile = false
opt.showcmd = true
opt.timeoutlen = 500
opt.showmatch = true
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true
opt.showmode = true
opt.completeopt = 'menu,menuone,noselect'
opt.ch = 0
opt.laststatus = 3

experimental = {
   native_menu = false,
}
