return {
  {
    "nvim-neorg/neorg",
    lazy = false,  -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "*", -- Pin Neorg to the latest stable release
    config = function()
      require('neorg').setup({
        load = {
          ["core.defaults"] = {},
          ["core.highlights"] = {
            rendered = {
              latex = "@Normal"
            }
          },
          ["core.concealer"] = {},
          ["core.export"] = {},

          ["core.integrations.image"] = {},
          ["core.latex.renderer"] = {
            --conceal=false,
            --render_on_enter = true
          }
        }
      })
    end,
  }
}
