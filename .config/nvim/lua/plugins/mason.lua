-- Customize Mason plugins

---@type LazySpec
return {
  "williamboman/mason.nvim",
  "jose-elias-alvarez/null-ls.nvim",
  "nvim-lua/plenary.nvim",

  -- use mason-lspconfig to configure LSP installations
  -- {
  --   "williamboman/mason-lspconfig.nvim",
  --   -- overrides `require("mason-lspconfig").setup(...)`
  --   opts = {
  --     ensure_installed = {
  --       "lua_ls",
  --       "clangd",
  --       -- add more arguments for adding more language servers
  --     },
  --   },
  -- },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        "stylua",
	"clang-format",
        -- add more arguments for adding more null-ls sources
      },
    },
  },
  -- {
  --   "jay-babu/mason-nvim-dap.nvim",
  --   -- overrides `require("mason-nvim-dap").setup(...)`
  --   opts = {
  --     ensure_installed = {
  --       -- add more arguments for adding more debuggers
  --     },
  --   },
  -- },
}
