return {
	'mhartington/formatter.nvim',
	config = function()
		require('formatter').setup({
			filetype = {
				typescript = {
					function()
						return {
							exe = "prettier",
							args = {
								"--stdin-filepath",
								vim.api.nvim_buf_get_name(0), -- Envía el nombre del archivo actual como argumento
								"--single-quote", -- Utiliza comillas simples
								"--trailing-comma=all", -- Agrega comas finales donde sea posible
								"--tab-width=2", -- Establece el tamaño de la tabulación a 2
								"--semi", -- Agrega punto y coma al final de la línea
							},
							stdin = true -- Prettier acepta el archivo a través de stdin
						}
					end
				},
				vue = {
					function()
						return {
							exe = "prettier",
							args = {
								"--stdin-filepath",
								vim.api.nvim_buf_get_name(0), -- Envía el nombre del archivo actual como argumento
								"--single-quote", -- Utiliza comillas simples
								"--trailing-comma=all", -- Agrega comas finales donde sea posible
								"--tab-width=2", -- Establece el tamaño de la tabulación a 2
								"--semi", -- Agrega punto y coma al final de la línea
							},
							stdin = true -- Prettier acepta el archivo a través de stdin
						}
					end
				},
				javascriptreact = {
					function()
						return {
							exe = "prettier",
							args = {
								"--stdin-filepath",
								vim.api.nvim_buf_get_name(0), -- Envía el nombre del archivo actual como argumento
								"--single-quote", -- Utiliza comillas simples
								"--trailing-comma=all", -- Agrega comas finales donde sea posible
								"--tab-width=2", -- Establece el tamaño de la tabulación a 2
								"--semi", -- Agrega punto y coma al final de la línea
							},
							stdin = true -- Prettier acepta el archivo a través de stdin
						}
					end
				},
				javascript = {
					function()
						return {
							exe = "prettier",
							args = {
								"--stdin-filepath",
								vim.api.nvim_buf_get_name(0), -- Envía el nombre del archivo actual como argumento
								"--single-quote", -- Utiliza comillas simples
								"--trailing-comma=all", -- Agrega comas finales donde sea posible
								"--tab-width=2", -- Establece el tamaño de la tabulación a 2
								"--semi=true", -- Agrega punto y coma al final de la línea
							},
							stdin = true -- Prettier acepta el archivo a través de stdin
						}
					end
				},
			},
		})
	end
}

