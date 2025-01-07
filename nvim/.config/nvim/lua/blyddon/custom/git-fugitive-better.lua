function GitBetter()
    -- vim.cmd.Git()
    vim.cmd("silent Git")

    local filter = vim.tbl_filter

    local bufnrs = filter(function(b)
        if 1 ~= vim.fn.buflisted(b) then
            return false
        end
        return true
    end, vim.api.nvim_list_bufs())

    table.sort(bufnrs, function(a, b)
      return vim.fn.getbufinfo(a)[1].lastused < vim.fn.getbufinfo(b)[1].lastused
    end)

    local buf = table.remove(bufnrs)
    -- local fugitiveBuf = table.remove(bufnrs)

    -- local lines = vim.api.nvim_buf_get_lines(fugitiveBuf, 0, -1, {})

    -- local buf = vim.api.nvim_create_buf(false, true)
    -- vim.api.nvim_buf_set_lines(buf, 0, -1, true, lines)
    local opts = {relative="win", width=100, height=50, bufpos={0,0}, anchor='SW', style="minimal", border="single", title="Hello World"}
    local win = vim.api.nvim_open_win(buf, 0, opts)
    vim.api.nvim_set_option_value("winhl", "Normal:MyHighlight", {win=win})
    -- vim.api.nvim_buf_delete(buf, {})
end

vim.api.nvim_create_user_command("GitBetter", GitBetter, {})

-- vim.cmd("silent Git")
-- vim.api.nvim_list_bufs()

