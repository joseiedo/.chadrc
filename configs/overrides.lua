local M = {}

M.treesitter = {
  ensure_installed = {
    "vimdoc",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "json",
    "tsx",
    "java",
    "c",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
    -- Hello
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",
    "json-lsp",

    -- java
    "jdtls",
    "java-test",
    "java-debug-adapter",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- python
    "pyright",
    "black"
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    group_empty = true,
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.copilot = {
  suggestion = {
    keymap = {
      accept = "<C-g>",
      accept_word = false,
      accept_line = false,
      next = "<C-.>",
      prev = "<C-,>",
      dismiss = "<C/>",
    },
    auto_trigger = true,
  },
  filetypes = {
    markdown = true,
  }
}

return M
