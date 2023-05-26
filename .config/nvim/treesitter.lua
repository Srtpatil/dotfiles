local ok, treesitter = pcall(require, 'nvim-treesitter.configs')
if not ok then
  return
end

treesitter.setup({
    ensure_installed = { "lua", "typescript", "vim", "python" },
    auto_install = false,
    log_level = vim.log.levels.WARN,
    highlight = {
        enable = true,
    },
})

