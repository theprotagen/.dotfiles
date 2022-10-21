local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- LSP
map('n', '<leader>,', ':lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
map('n', '<leader>;', ':lua vim.lsp.diagnostic.goto_next()<CR>', opts)
map('n', '<leader>a', ':lua vim.lsp.buf.code_action()<CR>', opts)
map('n', '<leader>d', ':lua vim.lsp.buf.definition()<CR>', opts)
map('n', '<leader>f', ':lua vim.lsp.buf.format()<CR>', opts)
map('n', '<leader>h', ':lua vim.lsp.buf.hover()<CR>', opts)
map('n', '<leader>m', ':lua vim.lsp.buf.rename()<CR>', opts)
map('n', '<leader>r', ':lua vim.lsp.buf.references()<CR>', opts)
map('n', '<leader>s', ':lua vim.lsp.buf.document_symbol()<CR>', opts)

-- Telescope
map('n', '<leader>ff', ':lua require("telescope.builtin").find_files()<cr>', opts)

-- Nvim-tree
map('n', '<leader>e', '<cmd>NvimTreeToggle<cr>', opts)
map('n', '<leader>ef', '<cmd>NvimTreeFocus<cr>', opts)

-- Barbar
map('n', '<A-,>', '<cmd>BufferPrevious<cr>', opts)
map('n', '<A-.>', '<cmd>BufferNext<cr>', opts)
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
--map('n', '<A-c>', '<Cmd>BufferDelete<CR>', opts)

-- Trouble
map('n', '<leader>xx', '<cmd>TroubleToggle<CR>', opts)
