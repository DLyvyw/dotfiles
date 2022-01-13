local telescope = require 'telescope'
local actions = require("telescope.actions")

telescope.setup {
    defaults = {
        layout_strategy = 'flex',
        scroll_strategy = 'cycle',
        vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
            "--trim" -- add this value
        }
    },
    extensions = {
        ["ui-select"] = {
            require("telescope.themes").get_dropdown {
                -- even more opts
            }
        }
        --  frecency = { workspaces = { exo = '/home/wil/projects/research/exoplanet' } },
        --  fzf = {
        --    fuzzy = true,
        --    override_generic_sorter = true,
        --    override_file_sorter = true,
        --    case_mode = 'smart_case',
        -- },
    },
    pickers = {
        lsp_references = {theme = 'dropdown'},
        lsp_code_actions = {theme = 'dropdown'},
        lsp_definitions = {theme = 'dropdown'},
        lsp_implementations = {theme = 'dropdown'},
	    buffers = {
		  sort_lastused = true,
		  theme = "dropdown",
		  previewer = false,
		  mappings = {
			i = {
			  ["<C-d>"] = require("telescope.actions").delete_buffer, -- FIXME
			},
			n = {
			  ["<C-d>"] = require("telescope.actions").delete_buffer, -- FIXME
			}
		  }
		} , pickers = {
            find_files = {
              find_command = { "fd", "--type", "f", "--full-path", "-E", ".git", "--strip-cwd-prefix" }
            },
          }
    }
}

-- Extensions
-- telescope.load_extension 'frecency'
-- telescope.load_extension 'fzf'

-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require("telescope").load_extension("ui-select")

-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
require("telescope").load_extension "file_browser"
