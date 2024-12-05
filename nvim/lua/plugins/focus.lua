return {{
  {
    'nvim-focus/focus.nvim',
    version = false,
    config = function()
      require("focus").setup({
        autoresize = {
          height_quickfix = 10
        },
        split = { bufnew = true },
        ui = {
          cursorline = false,
          cursorcolumn = true,
          hybridnumber = true,

          absolutenumber_unfocussed = true,

          signcolumn = false

        }
      })

      local ignore_buftypes = { 'nofile', 'prompt', 'popup', 'quickfix' }
      local ignore_filetypes = { 'neo-tree', 'coc-explorer', 'qf' }

      local augroup =
          vim.api.nvim_create_augroup('FocusDisable', { clear = true })

      vim.api.nvim_create_autocmd({'WinEnter', 'BufWinEnter'}, {
        group = augroup,
        callback = function(_)
          if vim.tbl_contains(ignore_buftypes, vim.bo.buftype)
          then
            vim.w.focus_disable = true
          else
            vim.w.focus_disable = false
          end
        end,
        desc = 'Disable focus autoresize for BufType',
      })

      vim.api.nvim_create_autocmd('FileType', {
        group = augroup,
        callback = function(_)
          if vim.tbl_contains(ignore_filetypes, vim.bo.filetype) then
            vim.b.focus_disable = true
          else
            vim.b.focus_disable = false
          end
        end,
        desc = 'Disable focus autoresize for FileType',
      })


      local focusmap = function(direction)
        vim.keymap.set('n', '<Leader>w' .. direction, function()
          require('focus').split_command(direction)
        end, { desc = string.format('Create or move to split (%s)', direction) })
      end

      -- Use `<Leader>h` to split the screen to the left, same as command FocusSplitLeft etc
      focusmap('h')
      focusmap('j')
      focusmap('k')
      focusmap('l')
    end,
  }
} }
