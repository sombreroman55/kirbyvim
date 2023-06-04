require('droovim.mappings')
require('droovim.settings')
require('droovim.autocmds')
require('droovim.syntax')
require('droovim.commands')
require('lazy').setup('droovim.plugins', {
  change_detection = {
    notify = false
  }
})
require('droovim.lsp')
require("nvim-tree").setup()
