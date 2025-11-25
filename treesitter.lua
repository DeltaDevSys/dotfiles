-- ~/.config/nvim/lua/plugins/treesitter.lua
local ts = require('nvim-treesitter.configs')

ts.setup {
  ensure_installed = { 'lua', 'c', 'cpp', 'cmake', 'rust', 'python', 'bash' }, 
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  },
}

