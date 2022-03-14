
local function config(_config)
	return vim.tbl_deep_extend("force", {
    capabilities = vim.lsp.protocol.make_client_capabilities(),
		on_attach = function()
			Nnoremap("gd", ":lua vim.lsp.buf.definition()<CR>")
			Nnoremap("K", ":lua vim.lsp.buf.hover()<CR>")
			Nnoremap("<leader>vws", ":lua vim.lsp.buf.workspace_symbol()<CR>")
			Nnoremap("<leader>vd", ":lua vim.diagnostic.open_float()<CR>")
			Nnoremap("[d", ":lua vim.lsp.diagnostic.goto_next()<CR>")
			Nnoremap("]d", ":lua vim.lsp.diagnostic.goto_prev()<CR>")
			Nnoremap("<leader>vca", ":lua vim.lsp.buf.code_action()<CR>")
			Nnoremap("<leader>vrr", ":lua vim.lsp.buf.references()<CR>")
			Nnoremap("<leader>vrn", ":lua vim.lsp.buf.rename()<CR>")
			Inoremap("<C-h>", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
		end,
	}, _config or {})
end

require("lspconfig").jedi_language_server.setup(config())

-- local configs = require'lspconfig/configs'    
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require("lspconfig").emmet_ls.setup({
    -- on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "html", "css", "typescriptreact", "javascriptreact" },
})

require'lspconfig'.ember.setup(config())
