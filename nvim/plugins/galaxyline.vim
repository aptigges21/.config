lua << EOF
local gl = require('galaxyline')
local colors = require('galaxyline.theme').default
local condition = require('galaxyline.condition')
local gls = gl.section
gl.short_line_list = {'NvimTree','startify','vim-plug'}

gls.left[1] = {
      RainbowRed = {
            provider = function() return ' ' end,
            highlight = {colors.blue,colors.bg}
      },
}

gls.left[2] = {
ViMode = {
	provider = function()
      -- auto change color according the vim mode
      local mode_color = {n = colors.red, i = colors.green,v=colors.blue,
            [''] = colors.blue,V=colors.blue,
            c = colors.magenta,no = colors.red,s = colors.orange,
            S=colors.orange,[''] = colors.orange,
            ic = colors.yellow,R = colors.violet,Rv = colors.violet,
            cv = colors.red,ce=colors.red, r = colors.cyan,
            rm = colors.cyan, ['r?'] = colors.cyan,
            ['!']  = colors.red,t = colors.red}
      vim.api.nvim_command('hi GalaxyViMode guifg='..mode_color[vim.fn.mode()] ..' guibg='..colors.bg)
      local aliases = {
            [110] = 'NORMAL',
            [105] = 'INSERT',
            [99] = 'COMMAND',
            [116] = 'TERMINAL',
            [118] = 'VISUAL',
            [22] = 'V-BLOCK',
            [86] = 'V-LINE',
            [82] = 'REPLACE',
            [115] = 'SELECT',
            [83] = 'S-LINE',
      }
      local alias = aliases[vim.fn.mode():byte()]
      local mode
      if alias ~= nil then
            mode = alias
      else
            mode = vim.fn.mode():byte()
      end
      return ' ' .. mode .. ' '

      end,
      highlight = { colors.bg, colors.bg, 'bold' },
  },
}

gls.left[3] = {
  LineInfo = {
    provider = 'LineColumn',
    highlight = {colors.fg,colors.bg},
  },
}

gls.left[4] = {
  PerCent = {
    provider = 'LinePercent',
    highlight = {colors.fg,colors.bg,'bold'},
  }
}

gls.mid[1] = {
  ShowLspClient = {
    provider = 'GetLspClient',
    condition = function ()
      local tbl = {['dashboard'] = true,['']=true}
      if tbl[vim.bo.filetype] then
        return false
      end
      return true
    end,
    icon = ' LSP:',
    highlight = {colors.yellow,colors.bg,'bold'}
  }
}

gls.mid[2] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = '  ',
    highlight = {colors.red,colors.bg}
  }
}
gls.mid[3] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = '  ',
    highlight = {colors.yellow,colors.bg},
  }
}

gls.mid[4] = {
  DiagnosticHint = {
    provider = 'DiagnosticHint',
    icon = '  ',
    highlight = {colors.cyan,colors.bg},
  }
}

gls.mid[5] = {
  DiagnosticInfo = {
    provider = 'DiagnosticInfo',
    icon = '  ',
    highlight = {colors.blue,colors.bg},
  }
}


gls.right[1] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = condition.hide_in_width,
    icon = ' ',
    highlight = {colors.green,colors.bg},
  }
}

gls.right[2] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = condition.hide_in_width,
    icon = ' ',
    highlight = {colors.orange,colors.bg},
  }
}

gls.right[3] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = condition.hide_in_width,
    icon = ' ',
    highlight = {colors.red,colors.bg},
  }
}

gls.right[4] = {
  GitIcon = {
    provider = function() return '  ' end,
    condition = condition.check_git_workspace,
--    separator = ' ',
--    separator_highlight = {'NONE',colors.bg},
    highlight = {colors.violet,colors.bg,'bold'},
  }
}

gls.right[5] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = condition.check_git_workspace,
    highlight = {colors.violet,colors.bg,'bold'},
  }
}

gls.right[6] = {
  RainbowBlue = {
    provider = function() return '  ' end,
    highlight = {colors.blue,colors.bg}
  },
}

gls.short_line_left[1] = {
  BufferType = {
    provider = 'FileTypeName',
    separator = ' ',
    separator_highlight = {'NONE',colors.bg},
    highlight = {colors.blue,colors.bg,'bold'}
  }
}

gls.short_line_left[2] = {
  SFileName = {
    provider =  'SFileName',
    condition = condition.buffer_not_empty,
    highlight = {colors.fg,colors.bg,'bold'}
  }
}

gls.short_line_right[1] = {
  BufferIcon = {
    provider= 'BufferIcon',
    highlight = {colors.fg,colors.bg}
  }
}
EOF
