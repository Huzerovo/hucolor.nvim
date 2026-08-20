-- colors/hucolor.lua · colorscheme 入口
-- 清缓存后加载，保证 vim.o.background 变更后能重新取色
for name in pairs(package.loaded) do
	if name:match("^hucolor") then
		package.loaded[name] = nil
	end
end

require('hucolor').set()
