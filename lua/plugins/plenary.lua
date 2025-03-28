return {
  'nvim-lua/plenary.nvim',
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    'nvim-telescope/telescope-ui-select.nvim',
    'nvim-tree/nvim-web-devicons',
    -- `build` is used to run some command when the plugin is installed/updated.
    -- This is only run then, not every time Neovim starts up.
    build = 'make',

    -- `cond` is a condition used to determine whether this plugin should be
    -- installed and loaded.
    cond = function()
      return vim.fn.executable 'make' == 1
    end,
  },
}
