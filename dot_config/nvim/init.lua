vim.o.number = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = false
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.showmode = false
vim.o.signcolumn = 'yes'

vim.opt.clipboard = 'unnamedplus'


vim.pack.add({
	{
		src = "https://github.com/rose-pine/neovim",
		name = "rose-pine",
	},
})

vim.cmd("set termguicolors")

require("rose-pine").setup()
vim.cmd("colorscheme rose-pine")

vim.cmd("highlight Normal guibg=none ctermbg=none")
vim.cmd("highlight NonText guibg=none ctermbg=none")
vim.cmd("highlight SignColumn guibg=none ctermbg=none")
vim.cmd("highlight EndOfBuffer guibg=none ctermbg=none")
vim.cmd("highlight MsgArea guibg=none ctermbg=none")
vim.cmd("highlight LineNr guibg=none ctermbg=none")
vim.cmd("highlight CursorLineNr guibg=none ctermbg=none")
vim.cmd("highlight StatusLine guibg=none ctermbg=none")
vim.cmd("highlight StatusLineNC guibg=none ctermbg=none")
vim.cmd("highlight TabLine guibg=none ctermbg=none")
vim.cmd("highlight TabLineFill guibg=none ctermbg=none")
vim.cmd("highlight TabLineSel guibg=none ctermbg=none")
vim.cmd("highlight VertSplit guibg=none ctermbg=none")
vim.cmd("highlight FloatBorder guibg=none ctermbg=none")
vim.cmd("highlight NormalFloat guibg=none ctermbg=none")
vim.cmd("highlight Pmenu guibg=none ctermbg=none")
vim.cmd("highlight PmenuSel guibg=none ctermbg=none")

