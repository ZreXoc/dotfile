if vim.g.neovide then
    --vim.cmd("colorscheme edge")
  --vim.o.guifont = "Cascadia Code,Source Han Sans CN:h14" -- text below applies for VimScript
    --vim.o.guifont = "Cascadia Code PL:h14" -- text below applies for VimScript
    --你好

    --vim.opt.guifont = { "Fira Code:h15" }
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_scale_factor = 0.9
  vim.g.neovide_text_gamma = 0.0
  vim.g.neovide_text_contrast = 0.0
  vim.g.neovide_theme = 'auto'

  vim.g.neovide_floating_corner_radius = 0.5
  vim.g.neovide_cursor_unfocused_outline_width = 0.125

  vim.g.neovide_hide_mouse_when_typing = true

  vim.g.neovide_cursor_vfx_mode = "wireframe"


  local change_scale_factor = function(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
  end
  vim.keymap.set("n", "<C-=>", function()
    change_scale_factor(1.2)
  end)
  vim.keymap.set("n", "<C-->", function()
    change_scale_factor(1 / 1.2)
  end)

  -- Helper function for transparency formatting
  local alpha = function()
    return string.format("%x", math.floor(255 * (vim.g.transparency or 0.8)))
  end
  -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
  vim.g.neovide_transparency = 1.0
  vim.g.transparency = 1.0
  vim.g.neovide_background_color = "#0f1117" .. alpha()


  local function set_ime(args)
    if args.event:match("Enter$") then
      vim.g.neovide_input_ime = true
    else
      vim.g.neovide_input_ime = false
    end
  end

  local ime_input = vim.api.nvim_create_augroup("ime_input", { clear = true })

  vim.api.nvim_create_autocmd({ "InsertEnter", "InsertLeave" }, {
    group = ime_input,
    pattern = "*",
    callback = set_ime
  })

  vim.api.nvim_create_autocmd({ "CmdlineEnter", "CmdlineLeave" }, {
    group = ime_input,
    pattern = "[/\\?]",
    callback = set_ime
  })

end
