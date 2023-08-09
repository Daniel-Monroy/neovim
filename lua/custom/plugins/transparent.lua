return {
	"xiyaowong/transparent.nvim",
	config = function()
		require("transparent").setup({
			enable = true, -- boolean: enable transparent
			extra_groups = { -- table/string: additional groups that should be clear
				-- In particular, when you set it to 'all', that means all avaliable groups
				-- Example: {'ExtraWhitespace', 'ExtraWhitespaceVisible'},
				-- Default: nil
			},
			exclude = {}, -- table: groups you don't want to clear
			-- Example: {"fugitive", "NvimTree"}
			-- Default: {}
		})
	end,
}
