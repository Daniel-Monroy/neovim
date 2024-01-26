-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})

-- Formater
vim.api.nvim_create_augroup("FormatAutoGroup", { clear = true})

-- Auto-comando que formatea el archivo en el evento BufWritePost
vim.api.nvim_create_autocmd('BufWritePost', {
  group = 'FormatAutoGroup',
  pattern = '*.js,*.jsx,*.ts,*.tsx,*.json,*.css,*.scss,*.md,*.vue',
  callback = function()
    vim.cmd('FormatWrite')
  end
})

-- Crea un grupo de auto-comandos si aún no existe
local ensure_blank_line_group = vim.api.nvim_create_augroup('EnsureBlankLineEOF', { clear = true })

-- Auto-comando que agrega una nueva línea al final del archivo en el evento BufWritePre
vim.api.nvim_create_autocmd('BufWritePre', {
  group = ensure_blank_line_group,
  pattern = 'php',
  callback = function()
    -- Obtén el número total de líneas en el buffer actual
    local line_count = vim.api.nvim_buf_line_count(0)

    -- Obtén la última línea del archivo
    local last_line = vim.api.nvim_buf_get_lines(0, line_count - 1, line_count, false)[1] or ""

    -- Si la última línea no está vacía, agrega una nueva línea al final
    if last_line ~= "" then
      vim.api.nvim_buf_set_lines(0, line_count, line_count, false, {""})
    end
  end
})

-- Configurar 'autoread' en toda la instancia de Neovim
vim.o.autoread = true

