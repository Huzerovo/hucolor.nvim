# hucolor.nvim

## hucolor 主题（暖纸 + 靛蓝 + 陶土橙）的 Neovim 移植

Neovim 配色，配色源自 [hucolor](https://github.com/huzerovo/hucolor) 的
配色设计文档（暖纸 + 靛蓝 + 陶土橙，见 `README.md` 中的 CSS 设计变量），
项目结构参照 [shaunsingh/nord.nvim](https://github.com/shaunsingh/nord.nvim)（GPL-2.0）。

暗色为默认变体，亮色（`vim.o.background = "light"`）同样受支持。

## 色板

暗色（默认）：

| 角色                | 色值                                    | 来源                                           |
| ------------------- | --------------------------------------- | ---------------------------------------------- |
| 背景 / 卡片 / 次级  | `#232328` `#2c2c34` `#32323b`           | `--hucolor-bg*` 提亮应用值，bg0 即终端默认背景 |
| 文字 强/正文/弱/淡  | `#f1f1f4` `#c9c9cf` `#8e8e97` `#67676f` | `--hucolor-text*`                              |
| 靛蓝（关键字/类型） | `#a3a4ff` `#b9baff`                     | `--hucolor-accent*`                            |
| 兰花紫（数字/常量） | `#c792ea`                               | `--hucolor-accent-visited`                     |
| 暖橙（函数/标题）   | `#f0a35e`                               | `--hucolor-warm`                               |
| 绿（字符串/diff+）  | `#4cc36a`                               | `--hucolor-done`                               |
| 黄（预处理/TODO）   | `#e8a23d`                               | `--hucolor-warn`                               |
| 红 / 青（派生补充） | `#e0554a` / `#7cc6cf`                   | 色板缺失色相（红独立取值，与亮色 warm 解耦）   |

亮色对应 CSS 亮色变体（`#f7f7f5` 纸底 + `#4a5cd4` 靛蓝 + `#d9582e` 陶土橙）。

## 特性

- 完整支持 Neovim 内置 LSP 诊断（新旧两代命名均有）与 TreeSitter（`TS*` 与 `@capture` 双命名）
- 亮/暗双变体，按 `vim.o.background` 自动切换
- 终端 ANSI 16 色同步设置（红随语义红，其余按 hucolor 语义取色）
- 插件支持：gitsigns / gitgutter、telescope、nvim-tree、which-key、nvim-cmp、
  indent-blankline(新旧)、nvim-notify、mini.nvim、dashboard、headlines、illuminate、
  leap / hop / flash / sneak、rainbow-delimiters、ts-rainbow、aerial、navic、
  nvim-dap(-ui)、neogit、lsp-trouble、noice、treesitter-context、bufferline、lualine
- 侧栏/浮窗可切换 contrast 背景

## 需求

- Neovim >= 0.8（推荐 0.10+ 以使用完整 `@capture` 与 `Diagnostic*` 组）

## 安装及配置

```lua
-- lazy.nvim
{
  'huzerovo/hucolor.nvim',
  lazy = false,
  priority = 1000,
  config = function()
  -- 侧栏/浮窗使用 elevated 背景，与正文区分
  vim.g.hucolor_contrast = true
  -- 垂直分屏窗口显示边框
  vim.g.hucolor_borders = true
  -- 光标行高亮（false 则透明）
  vim.g.hucolor_cursorline_transparent = false
  -- diff 模式统一背景色，避免五颜六色
  vim.g.hucolor_uniform_diff_background = true
  -- 亮色模式，可选
  -- vim.o.background = 'light'

  require('hucolor').set()

  -- 从调色板取色，避免硬编码
  local hucolor = require('hucolor.colors')

  local function apply_overrides()
    -- WinBar 与背景统一
    vim.api.nvim_set_hl(0, 'WinBar', { bg = hucolor.bg0, fg = hucolor.fg0 })
    vim.api.nvim_set_hl(0, 'WinBarNC', { bg = hucolor.bg0, fg = hucolor.fg2 })

    -- 行号/当前行号
    vim.api.nvim_set_hl(0, 'LineNr', { fg = hucolor.fg2 })
    vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = hucolor.blue, bold = true })
  end

  apply_overrides()

  -- 切换 colorscheme 后保持 override 生效
  vim.api.nvim_create_autocmd('ColorScheme', {
    callback = function()
      apply_overrides()
    end,
  })
  end
}
```

## 使用

默认值：`fill = bg0, indicator = blue, buffer_bg_selected = bg1, buffer_bg_visible = bg2`

### headlines.nvim

```lua
require('headlines').setup {
  markdown = {
    headline_highlights = { 'Headline1', 'Headline2', 'Headline3', 'Headline4', 'Headline5', 'Headline6' },
    codeblock_highlight = 'CodeBlock',
    dash_highlight = 'Dash',
    quote_highlight = 'Quote',
  },
}
```

## 配置

| 选项                                | 默认    | 说明                                                   |
| ----------------------------------- | ------- | ------------------------------------------------------ |
| `hucolor_contrast`                  | `false` | 侧栏/浮窗（nvim-tree、telescope 等）使用 elevated 背景 |
| `hucolor_borders`                   | `false` | 垂直分割线显示为 `bg2`（否则与背景同色）               |
| `hucolor_disable_background`        | `false` | 不设置背景色，使用终端背景                             |
| `hucolor_cursorline_transparent`    | `false` | cursorline 背景透明                                    |
| `hucolor_enable_sidebar_background` | `false` | 单独启用侧栏背景（配合上项）                           |
| `hucolor_italic`                    | `true`  | 斜体（注释/关键字/函数）                               |
| `hucolor_bold`                      | `true`  | 粗体                                                   |
| `hucolor_uniform_diff_background`   | `false` | diff 使用统一底色而非 reverse                          |

## 许可

GPL-2.0

参考实现 [shaunsingh/nord.nvim](https://github.com/shaunsingh/nord.nvim)（GPL-2.0）。
