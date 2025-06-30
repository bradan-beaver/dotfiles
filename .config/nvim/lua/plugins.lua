return {
  {
    "nvimdev/dashboard-nvim", event="VimEnter",
    config = function()
      require("dashboard").setup{
        --Dashboard config start
      }
    end,
    dependencies = {"nvim-tree/nvim-web-devicons"}
  },
  {
    "nvim-telescope/telescope.nvim", tag="0.1.8",
    dependencies = {"nvim-lua/plenary.nvim"},
    config = function()
      -- Telescope config start
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
      vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
    end
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.cmd [[Lazy load markdown-preview.nvim]]; vim.fn["mkdp#util#install"]() end,
  },
}
