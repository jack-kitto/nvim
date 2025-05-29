vim.cmd([[
  aunmenu PopUp
  anoremenu PopUp.Inspect     <cmd>Inspect<CR>
  amenu PopUp.-1-             <NOP>
  anoremenu PopUp.Definition  <cmd>lua vim.lsp.buf.definition()<CR>
  anoremenu PopUp.References  <cmd>Telescope lsp_references<CR>
  nnoremenu PopUp.Back        <C-t>
  amenu PopUp.-2-             <NOP>
  amenu     PopUp.URL         gx
]])

local function cursor_on_url()
  local line = vim.api.nvim_get_current_line()
  local col = vim.api.nvim_win_get_cursor(0)[2] + 1
  for s, e in line:gmatch("()https?://[%w-_%.%?%.:/%+=&]+()") do
    if col >= s and col <= e then
      return true
    end
  end
  return false
end

local group = vim.api.nvim_create_augroup("nvim_popupmenu", { clear = true })
vim.api.nvim_create_autocmd("MenuPopup", {
  pattern = "*",
  group = group,
  desc = "Custom PopUp Setup",
  callback = function()
    vim.cmd([[
      amenu disable PopUp.Definition
      amenu disable PopUp.References
      amenu disable PopUp.URL
    ]])

    if vim.lsp.get_clients({ bufnr = 0 })[1] then
      vim.cmd([[
        amenu enable PopUp.Definition
        amenu enable PopUp.References
      ]])
    end

    if cursor_on_url() then
      vim.cmd([[amenu enable PopUp.URL]])
    end
  end,
})
