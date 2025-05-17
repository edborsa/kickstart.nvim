local M = {
  'tpope/vim-fugitive',
  -- lazy‐load when you invoke any of these user commands:
  cmd = { 'Git', 'G', 'Gdiffsplit', 'Gread', 'Gwrite', 'Ggrep', 'GMove' },
  -- optionally set up a couple of default keymaps
  keys = {
    { '<leader>gs', '<cmd>G<cr>', desc = 'Git status (fugitive)' },
    { '<leader>gc', '<cmd>Git commit<cr>', desc = 'Git commit' },
    { '<leader>gp', '<cmd>Git push<cr>', desc = 'Git push' },
  },
  -- you can also configure it here if you need to tweak defaults:
  config = function()
    -- e.g. don't prompt to save before running :G
    vim.g.fugitive_no_maps = 1
  end,
}

return M
