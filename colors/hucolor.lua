-- colors/hucolor.lua · colorscheme 入口
-- 清缓存后加载，保证 vim.o.background 变更后能重新取色
package.loaded['hucolor'] = nil
package.loaded['hucolor.colors'] = nil
package.loaded['hucolor.named_colors'] = nil
package.loaded['hucolor.theme'] = nil
package.loaded['hucolor.util'] = nil

require('hucolor').set()
