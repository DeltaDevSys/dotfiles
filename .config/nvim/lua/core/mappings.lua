vim.g.mapleader = " "

vim.keymap.set('n', '<leader>e', ':Neotree float focus<CR>')
vim.keymap.set('n', '<leader>o', ':Neotree float git_status<CP>')

vim.keymap.set('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>a', { noremap = true, silent = true })

vim.keymap.set({'n', 'v'}, '<C-x>', 'dd', { noremap = true, silent = true })

vim.keymap.set({'n', 'i'}, '<C-z>', 'u', { noremap = true, silent = true })

vim.keymap.set('n', '<C-w>', ':q<CR>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-w>', '<Esc>:q<CR>', { noremap = true, silent = true })
