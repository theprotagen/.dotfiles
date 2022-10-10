require('mason-lspconfig').setup({
  ensure_installed = { 'cssls', 'html', 'jsonls', 'tsserver' },
  automatic_installation = true
})
