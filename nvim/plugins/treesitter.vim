lua <<EOF
require'nvim-treesitter.configs'.setup {
    ensure_installed = { "rust", "c" },
    highlight = {
        enable = true, -- false will disable the whole extension
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
        },
        indent = {
            enable = true
        },
    },
}

require "nvim-treesitter.configs".setup {
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false -- Whether the query persists across vim sessions
  }
}
EOF



set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
