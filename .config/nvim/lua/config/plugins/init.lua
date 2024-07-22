return {

	-- Git related plugins
	{
		'tpope/vim-fugitive',
		event = "VeryLazy",
	},
	{
		'tpope/vim-sleuth',
		event = "VeryLazy",
	},

	-- Useful plugin to show you pending keybinds.
	{
		'folke/which-key.nvim',
		event = "VeryLazy",
	},
	{
		-- Adds git related signs to the gutter, as well as utilities for managing changes
		'lewis6991/gitsigns.nvim',
		event = "VeryLazy",
		opts = {
			signs = {
				add = { text = '+' },
				change = { text = '~' },
			},
		},
	},

	{
		-- Theme inspired by Atom
		'navarasu/onedark.nvim',
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme 'onedark'
		end,
	},

	{
		-- Set lualine as statusline
		'nvim-lualine/lualine.nvim',
		lazy = false,
		-- See `:help lualine.txt`
		opts = {
			options = {
				icons_enabled = false,
				theme = 'onedark',
				component_separators = '|',
				section_separators = '',
			},
		},
	},

	{
		'lukas-reineke/indent-blankline.nvim',
		event = "VeryLazy",
		main = 'ibl',
		opts = {},
	},

	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		config = true
	},

	-- Github Copilot
	{
		"github/copilot.vim",
		event = "InsertEnter",
		config = function()
			vim.g.copilot_no_tab_map = true
			vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
		end
	},

	{
		'numToStr/Comment.nvim',
		event = "VeryLazy",
		opts = {}
	}
}
