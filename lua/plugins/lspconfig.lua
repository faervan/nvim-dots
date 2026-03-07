return {
	"mason-org/mason-lspconfig.nvim",
	opts = {},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
	config = function()
		local lsps = {
			{
				"harper_ls",
				{
					settings = {
						["harper-ls"] = {
							userDictPath = "",
							fileDictPath = "",
							linters = {
								SpellCheck = true,
								SpelledNumbers = false,
								AnA = true,
								SentenceCapitalization = true,
								UnclosedQuotes = true,
								WrongQuotes = false,
								-- default is true
								LongSentences = false,
								RepeatedWords = true,
								Spaces = true,
								Matcher = true,
								CorrectNumberSuffix = true,
								-- additional, see https://writewithharper.com/docs/rules
								ToDoHyphen = false,
							},
							codeActions = {
								ForceStable = false,
							},
							markdown = {
								IgnoreLinkTitle = false,
							},
							diagnosticSeverity = "hint",
							isolateEnglish = false,
							dialect = "American",
							maxFileLength = 120000,
						},
					},
				},
			},
			{ "bashls" },
			{ "ada_ls" },
			{ "lua_ls" },
			{ "rust_analyzer", { cmd = { "env", "RUSTUP_TOOLCHAIN=stable", "rust-analyzer" } } },
			-- { "wgsl_analyzer" },
			{ "taplo" },
			{ "html" },
			{ "cssls" },
		}

		-- see https://xnacly.me/posts/2025/neovim-lsp-changes/
		for _, lsp in pairs(lsps) do
			local name, config = lsp[1], lsp[2]
			vim.lsp.enable(name)
			if config then
				vim.lsp.config(name, config)
			end
		end
	end,
}
