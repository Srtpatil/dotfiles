local lualine_ok, lualine = pcall(require, 'lualine')
if not lualine_ok then
  return
end

lualine.setup {
  -- options = { theme  = 'horizon' },
  -- options = { theme  = 'pywal-nvim' },
  options = { theme  = 'tokyonight' },
   -- section_separators = { left = '', right = '' },
  -- component_separators = { left = '', right = '' }
  options = { section_separators = '', component_separators = '|' }
}
