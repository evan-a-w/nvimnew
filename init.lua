require('plugins')
require('plugin-config/nvim-treesitter')

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

vim.cmd("colorscheme terafox")

local set = vim.opt -- set options
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4

vim.g.mapleader = ','

vim.cmd([[
    nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
    nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
    nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
    nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
]])

vim.cmd([[
    set clipboard+=unnamedplus
    set expandtab
]])


-- Language servers
require'lspconfig'.rust_analyzer.setup{}
require'lspconfig'.hls.setup{}
require'lspconfig'.clangd.setup{}
