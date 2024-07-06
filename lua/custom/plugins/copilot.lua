return {
  'github/copilot.vim',
  config = function()
    vim.g.copilot_no_tab_map = true
    vim.g.copilot_no_wrap = true
    vim.api.nvim_set_keymap('i', '<c-j>', 'copilot#Accept("<CR>")', { silent = true, expr = true })
  end,
}
