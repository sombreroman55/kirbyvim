local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local droovim_group = augroup('droovim', {})
local yank_group = augroup('HighlightYank', {})
local indent_group = augroup('indentation', {})
local ft_group = augroup('ftypes', {})

function R(name)
  require('plenary.reload').reload_module(name)
end

autocmd('TextYankPost', {
  group = yank_group,
  pattern = '*',
  callback = function()
    vim.highlight.on_yank({
      higroup = 'IncSearch',
      timeout = 40
    })
  end
})

autocmd({'BufWritePre'}, {
  group = droovim_group,
  pattern = '*',
  command = [[%s/\s\+$//e]]
})

autocmd('Filetype', {
  group = indent_group,
  pattern = { "c", "cpp", "cs", "java", "rust", "python" },
  callback = function()
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
    vim.opt_local.softtabstop = 4
    vim.opt_local.expandtab = true
  end
})

autocmd('Filetype', {
  group = indent_group,
  pattern = { "make" },
  callback = function()
    vim.opt_local.expandtab = false
  end
})

autocmd({'BufRead', 'BufNewFile'}, {
  group = ft_group,
  pattern = {'*.hh', '*.cc' },
  callback = function()
    vim.opt_local.filetype = 'cpp'
  end
})

autocmd({'BufRead', 'BufNewFile'}, {
  group = ft_group,
  pattern = {'*.h', '*.c' },
  callback = function()
    vim.opt_local.filetype = 'c'
  end
})

autocmd({'Filetype'}, {
  pattern = {'markdown', 'text' },
  callback = function()
    vim.opt_local.textwidth = 100
  end
})
