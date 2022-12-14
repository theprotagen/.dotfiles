require('nvim-treesitter.configs').setup({
  ensure_installed = 'all',
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  indent = {
    enable = false
  }
})
