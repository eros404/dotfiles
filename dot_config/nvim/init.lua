vim.o.number = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = false
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.showmode = false
vim.o.signcolumn = 'yes'

vim.opt.clipboard = 'unnamedplus'
vim.g.clipboard = {
	name = "dms cl (Dank clipboard)",
  copy = {
  	["+"] = 'dms cl copy -t text/plain',
    ["*"] = 'dms cl copy -t text/plain',
  },
  paste = {
    ["+"] = 'dms cl paste',
		["*"] = 'dms cl paste',
  },
  cache_enabled = true
}
