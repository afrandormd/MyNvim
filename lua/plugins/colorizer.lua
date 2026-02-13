return {
	"norcalli/nvim-colorizer.lua",
	event = { "BufReadPost", "BufNewFile" },
	config = function()
		require("colorizer").setup({
			"*", -- aktif di semua file
		}, {
			RGB = true,
			RRGGBB = true,
			names = true,
			rgb_fn = true,
			hsl_fn = true,
			css = true,
			css_fn = true,
			mode = "background", -- background | foreground
		})
	end,
}
