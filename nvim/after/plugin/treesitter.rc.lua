local status, ts = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    'tsx',
    'lua',
    'python',
    'markdown',
    'json',
    'html',
    'scss',
    'css',
  },
  autotag = {
    enable = true,
  }
}


