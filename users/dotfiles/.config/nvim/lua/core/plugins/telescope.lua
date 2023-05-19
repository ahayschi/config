return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.1',
  dependencies = { 
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local telescope = require('telescope')
    local actions = require('telescope.actions')
    local builtin = require('telescope.builtin')
    
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fs', builtin.grep_string, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    vim.keymap.set('n', '<leader>fk', builtin.keymaps, {})
    vim.keymap.set('n', '<leader>ft', builtin.treesitter, {})
    
    telescope.setup{
      defaults = {
        sorting_strategy = "ascending",
        layout_config = {
          prompt_position = "top",
          horizontal = {
            width_padding = 0.04,
            height_padding = 0.1,
            preview_width = 0.6,
          },
          vertical = {
            width_padding = 0.05,
            height_padding = 1,
            preview_height = 0.5,
          },
        },
        file_ignore_patterns = {
          "%.svg",
          "%.bmp",
          "%.jpg",
          "%.jpeg",
          "%.gif",
          "%.png",
        },
        mappings = {
          i = {
            -- actions.which_key shows the mappings for your picker
            ["<C-h>"] = "which_key",
            ['<esc>'] = actions.close,
          }
        }
      },
      
      pickers = {
        live_grep = {
          only_sort_text = true,  -- don't include the filename in the search results
        },
        grep_string = {
          -- Setup for fuzzy text search
          shorten_path = true, 
          word_match = "-w", 
          only_sort_text = true,
          search = ''
        },
      },
      
      extensions = {
        fzf = {
          fuzzy = true,                    -- false will only do exact matching
          override_generic_sorter = true,  -- override the generic sorter
          override_file_sorter = true,     -- override the file sorter
          case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
        }
      }
    }
    
    telescope.load_extension('fzf')
  end
}