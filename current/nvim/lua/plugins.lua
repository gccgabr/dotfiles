require "paq" {
	"savq/paq-nvim";                  -- Let Paq manage itself

	"nvim-lualine/lualine.nvim";
	"voldikss/vim-floaterm";
	"nvim-lua/plenary.nvim";
	"nvim-telescope/telescope.nvim";
	"shaunsingh/solarized.nvim";
}

require("lualine").setup()

--require("lualine").setup({
--    options = {
--	    theme = "auto",
--    },
--    -- example config of sections
--    sections = {
--        lualine_b = {
--            {
--                "diff",
--                diff_color = {
--                -- specific colors from theme with bg color of section
--                    added    = "GitSignsAdd",
--                    modified = "GitSignsChange",
--                    removed  = "GitSignsDelete",
--                },
--                symbols = {
--                    added    = " ",
--                    modified = " ",
--                    removed  = " ",
--                },
--            },
--        },
--        lualine_x = {
--            {
--                "diagnostics",
--                sources = { "nvim_diagnostic" },
--                sections = { "error", "warn", "info", "hint" },
--                diagnostics_color = {
--                -- specific colors from theme with bg color of section
--                    error = "LualineDiagnosticError",
--                    warn  = "LualineDiagnosticWarn",
--                    info  = "LualineDiagnosticInfo",
--                    hint  = "LualineDiagnosticHint",
--                },
--                symbols = {
--                    error = " ",
--                    warn  = " ",
--                    info  = " ",
--                    hint  = " ",
--                },
--            },
--        },
--    }
--})
