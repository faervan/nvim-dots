return {
	"mason-org/mason-lspconfig.nvim",
	opts = {},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
	config = function()
		require("lspconfig").harper_ls.setup({
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
		})
		require("lspconfig").rust_analyzer.setup({})
		require("lspconfig").taplo.setup({})
		require("lspconfig").cssls.setup({})
	end,
}
