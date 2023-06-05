require('kirbyvim.mappings')
require('kirbyvim.settings')
require('kirbyvim.autocmds')
require('kirbyvim.syntax')
require('kirbyvim.commands')
require('lazy').setup('kirbyvim.plugins', {
  change_detection = {
    notify = false
  }
})
require('kirbyvim.lsp')
require("nvim-tree").setup()
