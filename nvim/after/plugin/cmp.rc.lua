local status, cmp = pcall(require, "cmp")
if (not status) then return end
local lspkind = require 'lspkind'

require('luasnip').filetype_extend("javascript", { "javascriptreact" })
require('luasnip').filetype_extend("javascript", { "html" })
require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup ({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end
  },
  mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<Tab>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    {name = 'luasnip'},
    { name = 'buffer' },
  }),
  formatting = {
    format = lspkind.cmp_format({ wirth_text = false, maxwidth = 40 })
  }
})

vim.cmd [[
  set completeopt=menuone,noinsert
  highlight! default link CmpItemKind CmpItemMenuDefault
]]
