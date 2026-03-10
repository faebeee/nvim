return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
          accept = "<M-l>",
          accept_word = false,
          accept_line = false,
          next = "<M-]>",
          prev = "<M-[>",
          dismiss = "<C-]>",
        },
      },
      panel = {
        enabled = false,
      },
      filetypes = {
        yaml = false,
        markdown = false,
        help = false,
        gitcommit = false,
        gitrebase = false,
        hgcommit = false,
        svn = false,
        cvs = false,
        ["."] = false,
      },
      copilot_node_command = vim.fn.executable("node") == 1 and "node" or nil,
      server_opts_overrides = {
        trace = "verbose",
        settings = {
          advanced = {
            length_penalties = {
              indentation = {
                relative_empty_line_length = 2.0,
                absolute_empty_line_length = 4,
              },
            },
          },
        },
      },
    },
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
      { "zbirenbaum/copilot.lua" },
      { "nvim-lua/plenary.nvim" },
    },
    opts = {
      debug = false,
      proxy = nil,
      allow_insecure = false,
      temperature = 0.1,
      question_header = "# User ",
      answer_header = "# Copilot ",
      error_header = "# Error ",
      separator = " --- ",
      contexts = {
        buffer = {
          weight = 10,
        },
      },
    },
    build = "make tiktoken",
    keys = {
      { "<leader>ccq", ":CopilotChatToggle<cr>", desc = "Toggle Copilot Chat", mode = { "n", "v" } },
      { "<leader>cce", ":CopilotChatExplain<cr>", desc = "Explain code", mode = { "n", "v" } },
      { "<leader>cct", ":CopilotChatTests<cr>", desc = "Generate tests", mode = { "n", "v" } },
      { "<leader>ccr", ":CopilotChatRefactor<cr>", desc = "Refactor code", mode = { "n", "v" } },
      { "<leader>ccd", ":CopilotChatDocs<cr>", desc = "Generate docs", mode = { "n", "v" } },
      { "<leader>ccf", ":CopilotChatFix<cr>", desc = "Fix code", mode = { "n", "v" } },
      { "<leader>cco", ":CopilotChatOptimize<cr>", desc = "Optimize code", mode = { "n", "v" } },
    },
  },
}
