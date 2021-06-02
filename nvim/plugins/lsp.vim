lua << EOF
local lspconfig = require'lspconfig'

lspconfig.pyright.setup{}
lspconfig.svls.setup{}
lspconfig.gopls.setup{}
lspconfig.metals.setup{}

lspconfig.svls.setup {
    filetypes = {'verilog_systemverilog', 'verilog', 'systemverilog'}
    }
EOF
