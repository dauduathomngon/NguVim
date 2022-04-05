-- Nvim-lsp-installer config
local ok1, lspinstall = pcall(require,"nvim-lsp-installer")

if not ok1 then
  print("Có lỗi xảy ra với nivm-lsp-installer, vui lòng check lại file lspconf.lua")
  return false
end

lspinstall.settings({
  ui = {
    icons = {
      server_installed = "✓",
      server_pending = "➜",
      server_uninstalled = "✗",
    },
  },
})

local servers = {
  "pyright",
  "clangd",
}

for _, name in pairs(servers) do
  local server_is_found, server = lspinstall.get_server(name)
  if server_is_found and not server:is_installed() then
    print("Đang tải về server code " .. name)
    server:install()
  end
end

-- Nvim-lsp config
local ok2, lspconfig = pcall(require,"lspconfig")

if not ok2 then 
  print("Có lỗi xảy ra với Lspconfig, vui lòng check file lspconf.lua")
  return false
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local opts = { noremap=true, silent=true }

local function on_attach(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  local function bufmap(...)
        vim.api.nvim_buf_set_keymap(bufnr, ...)
  end
  
  bufmap("n", "K", '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  bufmap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
  bufmap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
  bufmap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)

end

for _,lsp in ipairs(servers) do
  lspconfig[lsp].setup{
    on_attach = on_attach,
    capabilities = capabilities,
  }
end


