require('lualine').setup({
  options = {
    theme = "wombat",
    component_separators = '', -- Убрать разделители компонентов
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'filename'},
    lualine_c = {},
    lualine_x = {'encoding', 'filetype'},
    lualine_y = {},
    lualine_z = {'location'}
  }
})
