return {
	{
		"nvimtools/none-ls.nvim",
		lazy = false,
		config = function()
			local null_ls = require("null-ls")

			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,
					-- null_ls.builtins.formatting.prettier,
					-- null_ls.builtins.code_actions.refactoring,
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
      vim.lsp.enable('dartls')
			vim.lsp.config.dartls = {
				cmd = { "/opt/dart-sdk/bin/dart", "language-server", "--protocol=lsp" },
			}

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
			vim.keymap.set("i", "<C-?>", vim.lsp.buf.completion, {})
			vim.keymap.set("n", "<leader>gq", vim.lsp.buf.format, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, {})
			vim.keymap.set("n", "<leader>fd", vim.diagnostic.setloclist, {})
		end,
	},
}
