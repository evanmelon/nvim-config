vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.cmd.colorscheme "catppuccin"
vim.api.nvim_set_keymap('n', '<Esc>', ':noh<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>t', ':split<CR><C-w>j:terminal<CR>', { noremap = true, silent = true })
-- 在終端模式下移動窗口
vim.api.nvim_set_keymap('t', '<C-h>', [[<C-\><C-n><C-w>h]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<C-l>', [[<C-\><C-n><C-w>l]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<C-k>', [[<C-\><C-n><C-w>k]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<C-j>', [[<C-\><C-n><C-w>j]], { noremap = true, silent = true })
-- 保存並退出所有窗口，包括終端 
vim.api.nvim_set_keymap('n', '<leader>wq', ':wa | qa<CR>', { noremap = true, silent = true })

-- 行數顯示
vim.opt.number = true
vim.opt.relativenumber = true
