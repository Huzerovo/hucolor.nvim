-- colors/hulog.lua · colorscheme 入口
-- 清缓存后加载，保证 vim.o.background 变更后能重新取色
package.loaded['hulog'] = nil
package.loaded['hulog.colors'] = nil
package.loaded['hulog.named_colors'] = nil
package.loaded['hulog.theme'] = nil
package.loaded['hulog.util'] = nil

require('hulog').set()
