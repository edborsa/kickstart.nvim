local M = {
  'zbirenbaum/copilot.lua',
  cmd = 'Copilot',
  event = 'InsertEnter',
  dependencies = {
    'zbirenbaum/copilot-cmp',
  },
  config = function()
    require('copilot').setup {
      panel = {
        keymap = {
          jump_next = '<c-j>',
          jump_prev = '<c-k>',
          accept = '<c-a>',
          refresh = 'r',
          open = '<M-CR>',
        },
      },
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = '<c-a>',
          next = '<c-j>',
          prev = '<c-k>',
          dismiss = '<c-h>',
        },
      },
      filetypes = {
        markdown = true,
        help = false,
        gitcommit = false,
        gitrebase = false,
        cvs = false,
        ['.'] = false,
      },
      copilot_node_command = 'node',
    }
  end,
}

vim.api.nvim_set_keymap('n', '<c-s>', ":lua require('copilot.suggestion').toggle_auto_trigger()<CR>", { noremap = true, silent = true })

return M
