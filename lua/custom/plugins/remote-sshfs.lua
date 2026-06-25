return {
  'nosduco/remote-sshfs.nvim',
  dependencies = {
    'nvim-telescope/telescope.nvim',
    'nvim-lua/plenary.nvim',
  },
  opts = {},
  config = function(_, opts)
    require('remote-sshfs').setup(opts)
    require('telescope').load_extension 'remote-sshfs'

    -- Keymaps
    local map = vim.keymap.set
    map('n', '<leader>fc', ':RemoteSSHFSConnect<CR>', { desc = 'SSHFS Connect' })
    map('n', '<leader>fl', ':RemoteSSHFSList<CR>', { desc = 'SSHFS List mounts' })
    map('n', '<leader>fd', ':RemoteSSHFSDisconnect<CR>', { desc = 'SSHFS Disconnect' })
    map('n', '<leader>fs', ':Telescope remote-sshfs live_grep<CR>', { desc = 'SSHFS Live grep' })
  end,
}
