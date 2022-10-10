local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local lspconfig = require('lspconfig')

local servers = { 'cssls', 'html', 'jsonls', 'tsserver' }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    capabilities = capabilities
  })
end
