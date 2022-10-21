local impatient_ok, impatient = pcall(require, 'impatient')
if impatient_ok then impatient.enable_profile() end

require('settings.options')
require('plugins')
--require('settings.utils')
--require('settings.color')
--require('settings.gruvbox')
require('settings.tokyonight')
--require('settings.font')
require('settings.completion')
require('settings.lsp')
require('settings.keymappings')
