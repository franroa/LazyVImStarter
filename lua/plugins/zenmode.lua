return {
  {
    "folke/zen-mode.nvim",
    keys = {
      {
        "<leader>uz",
        function()
          vim.cmd("ZenMode")
        end,
        desc = "Zen mode",
      },
    },
    opts = function(_, opts)
      opts.plugins = {
        wezterm = {
          enabled = false, -- TODO: do this when closing zenmode reverts wezterm changes
          -- can be either an absolute font size or the number of incremental steps
          font = "+4",     -- (10% increase per step)
        },
      }
    end
  }
}
