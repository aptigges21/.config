lua << EOF
local lspconfig = require'lspconfig'

lspconfig.pyright.setup{}
lspconfig.gopls.setup{}
lspconfig.metals.setup{}

lspconfig.html.setup{
    filetypes = { 'html', 'htmldjango' }
}

lspconfig.svls.setup {
    filetypes = {'verilog_systemverilog', 'verilog', 'systemverilog'}
    }
EOF
