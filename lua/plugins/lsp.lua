return{
	{
		'williamboman/mason.nvim',
		config=function()
			require("mason").setup()
		end
	},
	{
		'williamboman/mason-lspconfig.nvim',
		config=function()
			require('mason').setup()
			require('mason-lspconfig').setup({
				ensure_installed={"lua_ls","clangd",'ts_ls','jdtls'}
			})
		end
	},
	{
		'neovim/nvim-lspconfig',
		dependencies={'williamboman/mason.nvim'},
		config=function()
			local capabilities = require('cmp_nvim_lsp').default_capabilities()
			require("mason").setup()
			local lspconfig=require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities=capabilities
			})
			lspconfig.clangd.setup({
				capabilities =capabilities
			})
			lspconfig.ts_ls.setup({
				capabilities =capabilities
			})
			lspconfig.jdtls.setup({
				capabilities =capabilities
			})
			lspconfig.ast_grep.setup({
				capabilities =capabilities
			})
			vim.keymap.set('n','K',vim.lsp.buf.hover,{})
			vim.keymap.set({'n','v'},'<leader>ca',vim.lsp.buf.code_action,{})
		end
	}
}
