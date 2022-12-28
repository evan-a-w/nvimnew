vim.cmd([[
    let g:opamshare = substitute(system('opam var share'),'\n$','','''')
    execute "set rtp+=" . g:opamshare . "/merlin/vim"
    let g:opambin = substitute(system('opam var bin'),'\n$','','''')
    let g:neoformat_ocaml_ocamlformat = {
                \ 'exe': g:opambin . '/ocamlformat',
                \ 'no_append': 1,
                \ 'stdin': 1,
                \ 'args': ['--name', '"%"', '-'],
                \ }
    let g:neoformat_enabled_ocaml = ['ocamlformat']

    augroup fmt
      autocmd!
      autocmd BufWritePre * | Neoformat
    augroup END
]])
