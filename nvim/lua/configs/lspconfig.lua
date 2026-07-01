require("nvchad.configs.lspconfig").defaults()


local servers = { "html", "cssls", "pyright", "rust-analyzer", "ts_ls", "eslint", "tailwindcss", "marksman" }

local base_on_attach = vim.lsp.config.eslint.on_attach
vim.lsp.config("eslint", {
  on_attach = function(client, bufnr)
    if not base_on_attach then return end

    base_on_attach(client, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      command = "LspEslintFixAll",
    })
  end,
})

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
