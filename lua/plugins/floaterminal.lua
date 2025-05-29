-- Map <esc><esc> in terminal mode to exit to normal mode
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")

local state = {
  floating = {
    buf = -1,
    win = -1,
  },
}

local function create_floating_window(opts)
  opts = opts or {}
  local width = opts.width or math.floor(vim.o.columns * 0.8)
  local height = opts.height or math.floor(vim.o.lines * 0.8)

  -- Calculate the position to center the window
  local col = math.floor((vim.o.columns - width) / 2)
  local row = math.floor((vim.o.lines - height) / 2)

  -- Create a buffer
  local buf
  if opts.buf and vim.api.nvim_buf_is_valid(opts.buf) then
    buf = opts.buf
  else
    buf = vim.api.nvim_create_buf(false, true) -- No file, scratch buffer
  end

  -- Define window configuration
  local win_config = {
    relative = "editor",
    width = width,
    height = height,
    col = col,
    row = row,
    style = "minimal",
    border = "rounded",
  }

  -- Create the floating window
  local win = vim.api.nvim_open_win(buf, true, win_config)

  return { buf = buf, win = win }
end

local function toggle_terminal()
  -- If the window is not valid, create it
  if not vim.api.nvim_win_is_valid(state.floating.win) then
    state.floating = create_floating_window({ buf = state.floating.buf })
    local buf = state.floating.buf
    -- If the buffer is not a terminal, start a terminal in it
    if vim.bo[buf].buftype ~= "terminal" then
      vim.fn.termopen(os.getenv("SHELL") or "sh")
      vim.cmd("startinsert")
    else
      -- If it's already a terminal, just enter insert mode
      vim.cmd("startinsert")
    end
  else
    -- Hide the window
    vim.api.nvim_win_hide(state.floating.win)
  end
end

-- Create a user command for manual use
vim.api.nvim_create_user_command("Floaterminal", toggle_terminal, {})

-- Map <leader>t in normal mode to toggle the terminal
vim.keymap.set("n", "<leader>t", toggle_terminal, { desc = "Toggle floating terminal" })
