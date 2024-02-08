---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    ["<C-a>"] = { "ggVG", "select all text" },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },

    ["<leader>tt"] = {
      function()
        require("base46").toggle_theme()
      end,
      "Toggle Theme",
    },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!
M.tabufline = {
  -- cycle through buffers
  n = {
    ["]b"] = {
      function()
        require("nvchad.tabufline").tabuflineNext()
      end,
      "Goto next buffer",
    },

    ["[b"] = {
      function()
        require("nvchad.tabufline").tabuflinePrev()
      end,
      "Goto prev buffer",
    },

    -- close buffer + hide terminal buffer
    ["<leader>bd"] = {
      function()
        require("nvchad.tabufline").close_buffer()
      end,
      "Close buffer",
    },
  },
}

M.lspconfig = {
  n = {
    ["<leader>se"] = {
      function()
        vim.diagnostic.open_float()
      end,
      "Floating diagnostic",
    },
  },
}

M.copilot = {
  plugin = true,
  i = {
    ["<C-g>"] = {
      function()
        require("copilot.suggestion").accept_line()
      end,
      "Accept copilot suggestion",
    },
  },
}

return M
