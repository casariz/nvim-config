local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then return end
require("toggleterm").setup{
  open_mapping = '<C-g>',
  size = 10,
  shading_factor = 2,
  direction = "float",
  float_opts = {
    border = "curved",
    highlights = {
      border = "Normal",
      background = "Normal",
    },
  },
}
