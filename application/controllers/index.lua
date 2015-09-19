local IndexController = {}
local service = require 'models.service.user'

function IndexController:index()
	-- local sgmatch = ngx.re.gmatch or string.gmatch
	-- ppz(package.config)
	-- pp(package.loaders)
	-- pp(package.searchers)
	-- for k,v in pairs(package) do
	-- 	pp(k)
	-- end
	-- pp(package.preload)
	-- pp(package.loaders)
    local view = self:getView()
    local p = {}
    p['vanilla'] = 'Welcome To Vanilla...'
    p['zhoujing'] = 'Power by Openresty'
    view:assign(p)
    return view:display()
end

return IndexController
