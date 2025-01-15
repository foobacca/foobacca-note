-- Creates an object for the module
local M = {}

-- Adds the date and timestamp to the end of the file
function M.note_add()
  local date_title = "## " .. os.date("%F %A")
  local time_title = "### " .. os.date("%R")
  if vim.fn.search(date_title) == 0 then
    -- the date title was not found
    vim.api.nvim_buf_set_lines(0, -1, -1, false, {"", date_title, "", time_title, "", ""})
  else
    vim.api.nvim_buf_set_lines(0, -1, -1, false, {"", time_title, "", ""})
  end
end

return M

-- original:
--
-- function Note_add()
--    let l:date = '## ' . strftime('%F %A')
--    let l:time = '### ' . strftime('%R')
--    let l:lastline = line('$')
--    call append(l:lastline, ['', l:time, '', ''])
--    if !search(date,'w')
--        call append(l:lastline, ['', l:date])
--    endif
-- endfunction
