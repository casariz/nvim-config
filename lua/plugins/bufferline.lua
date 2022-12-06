--vim.opt.termguicolors = true
require('bufferline').setup({
  options = {
    mode = 'buffers',
    offsets = {
      {filetype = 'NvimTree'}
    },
  },
  highlights = {
    buffer_selected = {
      italic = false
    },
    indicator_selected = {
      fg = {attribute = 'fg', highlight = 'Function'},
      italic = false
    }
  }
})


local opts = { noremap=true, silent=true }
local map = vim.api.nvim_set_keymap
map('n', '<leader>gb', '<cmd> BufferLinePick', opts)

