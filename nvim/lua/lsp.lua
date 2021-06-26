local lspconfig = require'lspconfig'

-- Lua setup for cmd
local sumneko_root_path = '/home/drew/.lua-lsp/'
local sumneko_binary = sumneko_root_path.."bin/Linux/lua-language-server"

lspconfig.pyright.setup{}
lspconfig.gopls.setup{}
lspconfig.metals.setup{}
lspconfig.ccls.setup{}
lspconfig.sumneko_lua.setup {
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "main.lua"};
  settings = { Lua = { diagnostics = { globals = {'vim'} } } }
}

lspconfig.svls.setup {
  filetypes = {'verilog_systemverilog', 'verilog', 'systemverilog'},
  root_dir = lspconfig.util.root_pattern('.svls.toml', '.git', '.svlint.toml')
}
