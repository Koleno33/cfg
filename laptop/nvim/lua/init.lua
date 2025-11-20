require'nvim-treesitter.configs'.setup {
  ensure_installed = {"cpp", "python", "haskell"},
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = false,
  },
}

require('neoscroll').setup({
  mappings = {                 -- Keys to be mapped to their corresponding default scrolling animation
    '<C-u>', '<C-d>',
    '<C-b>', '<C-f>',
    '<C-y>', '<C-e>',
    'zt', 'zz', 'zb',
  },
  hide_cursor = true,          -- Hide cursor while scrolling
  stop_eof = true,             -- Stop at <EOF> when scrolling downwards
  respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
  cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
  duration_multiplier = 1.0,   -- Global duration multiplier
  easing = 'linear',           -- Default easing function
  pre_hook = nil,              -- Function to run before the scrolling animation starts
  post_hook = nil,             -- Function to run after the scrolling animation ends
  performance_mode = false,    -- Disable "Performance Mode" on all buffers.
  ignored_events = {           -- Events ignored while scrolling
      'WinScrolled', 'CursorMoved'
  },
})

vim.api.nvim_set_hl(0, '@type.builtin', { link = 'Type', default = true })
vim.api.nvim_set_hl(0, '@type.qualifier', { link = 'Type', default = true })

-- Для C++ специфично
vim.api.nvim_set_hl(0, '@type.builtin.cpp', { link = 'Type', default = true })

-- Для Python
vim.api.nvim_set_hl(0, '@type.builtin.python', { link = 'Type', default = true })

-- Для Haskell
vim.api.nvim_set_hl(0, '@type.builtin.haskell', { link = 'Type', default = true })

require'treesitter-context'.setup{
  enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
  multiwindow = false, -- Enable multiwindow support.
  max_lines = 2, -- How many lines the window should span. Values <= 0 mean no limit.
  min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
  line_numbers = false,
  multiline_threshold = 2, -- Maximum number of lines to show for a single context
  trim_scope = 'inner', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
  mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
  -- Separator between context and content. Should be a single character string, like '-'.
  -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
  separator = nil,
  zindex = 20, -- The Z-index of the context window
  on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
}

vim.api.nvim_set_hl(0, 'TreesitterContext', { link = 'Normal' })
--- EndOfBuffer for no numbers
vim.api.nvim_set_hl(0, 'TreesitterContextLineNumber', { link = 'LineNr' })
