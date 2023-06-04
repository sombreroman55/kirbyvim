return {
  {
    'ellisonleao/gruvbox.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme('gruvbox')
    end
  },
  {
    'folke/tokyonight.nvim',
  },
  {
    'thedenisnikulin/vim-cyberpunk',
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
  }
}
