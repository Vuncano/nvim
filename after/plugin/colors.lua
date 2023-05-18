--require('material').setup({
--	disable = {
--        colored_cursor = true
--}
--})

--vim.g.material_style = "deep ocean"

--vim.cmd 'colorscheme material'

--function ColorMyPencils(color)
--	color = color or "material"
--	vim.cmd.colorscheme(color)

--	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--end

--ColorMyPencils()

require('tokyonight').setup({
  style = "storm",
  transparent = true,
  disable = {
    colored_cursor = true
  }
})

vim.cmd 'colorscheme tokyonight'

--function ColorMyPencils(color)
--  color = color or "tokyonight"
--  vim.cmd.colorscheme(color)

--  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--end

--ColorMyPencils()
