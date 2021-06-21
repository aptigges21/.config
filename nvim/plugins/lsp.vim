lua << EOF
local lspconfig = require'lspconfig'

lspconfig.pyright.setup{}
lspconfig.gopls.setup{}
lspconfig.metals.setup{}
lspconfig.ccls.setup{}

lspconfig.html.setup{
    filetypes = { 'html', 'htmldjango' }
}

lspconfig.svls.setup {
    filetypes = {'verilog_systemverilog', 'verilog', 'systemverilog'},
    root_dir = lspconfig.util.root_pattern('.svls.toml', '.git', '.svlint.toml')
}
EOF
