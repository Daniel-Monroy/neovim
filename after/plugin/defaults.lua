vim.opt.relativenumber = true

vim.keymap.set('n', '<c-n>', ':Neotree toggle<cr>')
vim.keymap.set('i', '<c-s>', ':Telescope symbols<cr>')

require('neo-tree').setup {
  event_handlers = {
    {
      event = 'file_opened',
      handler = function(file_path)
        require('neo-tree').close_all()
      end,
    },
  },
}

vim.opt.tabstop = 3
vim.opt.shiftwidth = 3
vim.opt.softtabstop = 3
vim.opt.expandtab = true
vim.g.snippets = 'luasnip'

--
