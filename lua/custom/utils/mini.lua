local M = {}

-- Code adapted from https://github.com/LazyVim/LazyVim/blob/8ba7c64a7da9e46f2ac601919508803824208935/lua/lazyvim/util/mini.lua#L63-L110
--- Register all textobjects with which-key
function M.ai_whichkey()
  ---@type table<string, string | table>
  local i = {
    [' '] = 'Whitespace',
    ['"'] = 'Balanced "',
    ["'"] = "Balanced '",
    ['`'] = 'Balanced `',
    ['('] = 'Balanced (',
    [')'] = 'Balanced ) including white-space',
    ['>'] = 'Balanced > including white-space',
    ['<lt>'] = 'Balanced <',
    [']'] = 'Balanced ] including white-space',
    ['['] = 'Balanced [',
    ['}'] = 'Balanced } including white-space',
    ['{'] = 'Balanced {',
    ['?'] = 'User Prompt',
    _ = 'Underscore',
    a = 'Argument',
    b = 'Balanced ), ], }',
    c = 'Class',
    d = 'Digit(s)',
    e = 'Word in CamelCase & snake_case',
    f = 'Function',
    -- g = 'Entire file',
    -- i = 'Indent',
    o = 'Block, conditional, loop',
    q = 'Quote `, ", \'',
    t = 'Tag',
    u = 'Use/call function & method',
    U = 'Use/call without dot in name',
  }
  local a = vim.deepcopy(i)
  for k, v in pairs(a) do
    if type(v) == 'string' then
      a[k] = v:gsub(' including.*', '')
    end
  end

  local ic = vim.deepcopy(i)
  local ac = vim.deepcopy(a)
  for key, name in pairs { n = '[N]ext', l = '[L]ast' } do
    i[key] = vim.tbl_extend('force', { name = 'Inside ' .. name .. ' textobject' }, ic)
    a[key] = vim.tbl_extend('force', { name = 'Around ' .. name .. ' textobject' }, ac)
  end

  require('which-key').register {
    mode = { 'o', 'x' },
    i = i,
    a = a,
  }
end

return M
