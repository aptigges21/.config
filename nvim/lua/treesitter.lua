local o = vim.o

require'nvim-treesitter.configs'.setup {
    ensure_installed = { "python", "c", "html", "go", "scala", "lua", "verilog" },
    highlight = {
        enable = true,
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
        },
    },
    indent = {
        enable = true
    },
}

o.foldnestmax = 99
o.foldmethod = 'expr'
o.foldexpr = 'nvim_treesitter#foldexpr()'
