require 'nvim-treesitter.configs'.setup {
  -- A list of parser, or 'all'
  ensure_installed = {"c", "lua", "rust", "ruby", "vim", "terraform", "typescript", "python"},
  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,
  auto_install = true,
  hightlight = {
    enable = true,
  },
}
