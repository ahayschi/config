return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup {
      options = { 
        icons_enabled = false,
        theme = 'auto' 
      },
      sections = {
        lualine_b = {'branch', 'diff'},
        lualine_x = {{'diagnostics', sources={'nvim_lsp'}}},
        lualine_y = {'filetype'}
      }
    }
  end
}