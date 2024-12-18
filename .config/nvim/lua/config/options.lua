local opt = vim.opt

-- General
-- ===
opt.title = true
opt.titlestring = '%<%F%=%l/%L - nvim'
opt.mouse = 'nv'
opt.virtualedit = 'block'
opt.confirm = true

opt.textwidth = 120
opt.tabstop = 4
opt.smartindent = true
vim.cmd [[set smarttab]]
vim.cmd [[set expandtab]]
opt.shiftwidth = 4

opt.undofile = true
opt.undolevels = 10000
opt.writebackup = false

-- Searching
-- ===
opt.ignorecase = true      -- Search ignoring case
opt.smartcase = true       -- Keep case when searching with *
opt.inccommand = 'nosplit' -- Preview incremental substitute
opt.jumpoptions = 'view'

-- Editor UI
-- ===

opt.termguicolors = true -- True color support
vim.cmd [[set number relativenumber]]
opt.cursorline = true

-- Completion
-- ===
vim.opt.completeopt = { 'menuone', 'noselect', 'noinsert' }
vim.opt.shortmess = vim.opt.shortmess + { c = true }
vim.api.nvim_set_option('updatetime', 300)

vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])

-- Other
-- ===

require("gruvbox").setup({
    contrast_dark = "hard",
})
vim.o.background = "dark"
vim.cmd("colorscheme gruvbox")

vim.cmd [[
highlight SignColumn guibg=NONE
highlight EndOfBuffer guifg=bg
highlight Visual guibg=#8026ed


]]
