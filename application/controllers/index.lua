local json = require 'cjson'
local service = require 'models.service.user'
local dispatcher = require 'vanilla.v.dispatcher'
local IndexController = {}

function IndexController:index_http()
    local ck = require "resty.cookie"
    local cookie, err = ck:new()
    if not cookie then
        pp(err)
        return
    end

    local ok, err = cookie:set({
        key = "zhoujing", value = "===============",
    })

    local fields, err = cookie:get_all()
    if not fields then
        pp(err)
        return
    end
    pp(fields)
end

function IndexController:index()
	-- local sgmatch = ngx.re.gmatch or string.gmatch
	-- ppz(package.config)
	-- pp(package.loaders)
	-- pp(package.searchers)
	-- for k,v in pairs(package) do
	-- 	pp(k)
	-- end
	-- pp(package.preload)
    -- pp('<pre/>')
	-- pp(package.loaders)
    -- pp(ngx.status)
    local view = self:getView()
    local resp = self:getResponse()
    -- resp:appendBody('===================')
    -- resp:prependBody('-------------')
    -- resp:setHeader('Content-type', 'application/json')
    local p = {}
    p['vanilla'] = 'Welcome To Vanilla...'
    p['zhoujing'] = 'Power by Openresty'
    -- pp(ngx.dispatcher:getRouter())
    -- return json.encode(p)
    -- return false
    -- self:redirect('sina.cn')
    -- pp(p)
    -- view:caching(false)
    view:assign(p)
    return view:display()
end

return IndexController