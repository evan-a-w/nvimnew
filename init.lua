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
set.expandtab = true
set.smartindent = true
set.smarttab = true
set.number = true

vim.g.mapleader = ','

vim.cmd([[
    nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
    nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
    nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
    nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
]])

vim.cmd([[
    set clipboard+=unnamedplus

    set inccommand=nosplit
    syntax on
    filetype plugin indent on
    filetype plugin on


    nnoremap <C-H> :Hexmode<CR>
    inoremap <C-H> <Esc>:Hexmode<CR>
    vnoremap <C-H> :<C-U>Hexmode<CR>


    " " Copy to clipboard
    vnoremap  <leader>y  "+y
    nnoremap  <leader>Y  "+yg_
    nnoremap  <leader>y  "+y
    nnoremap  <leader>yy  "+yy

    " " Paste from clipboard
    nnoremap <leader>p "+p
    nnoremap <leader>P "+P
    vnoremap <leader>p "+p
    vnoremap <leader>P "+P
]])


-- Language servers
require'lspconfig'.rust_analyzer.setup{}
require'lspconfig'.hls.setup{}
require'lspconfig'.clangd.setup{}
require'lspconfig'.ocamllsp.setup{}
require'lspconfig'.pyright.setup{}
require'lspconfig'.tsserver.setup{}

require('lspconf')

-- Lang specific stuff
vim.cmd([[
    autocmd FileType haskell setlocal shiftwidth=2 tabstop=2 softtabstop=2
    autocmd FileType ocaml setlocal shiftwidth=2 tabstop=2 softtabstop=2
    autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2
    autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
    autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
    autocmd FileType asm setlocal noexpandtab shiftwidth=8 tabstop=8 softtabstop=8
    autocmd Filetype rust setlocal omnifunc=v:lua.vim.lsp.omnifunc

    let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
    execute "set rtp+=" . g:opamshare . "/merlin/vim"

    let g:syntastic_ocaml_checkers = ['merlin']

    autocmd Filetype ocaml map K :MerlinTypeOf<CR>
    autocmd Filetype ocaml map <g-d> :MerlinLocate<CR>
    autocmd Filetype ocaml map <c-d> :MerlinDestruct<CR>
    autocmd Filetype ocaml map <c-c> :MerlinConstruct<CR>
]])
