local conf = require 'nginx.init.config'
ngx.zhou = conf

-- local sgmatch = string.gmatch
-- pp(type(sgmatch))
-- ngx.say(type(sgmatch))

-- package.loaders[2] = function( name )
--         -- print("try to load", name )
--         ngx.say(name)
--         -- ngx.eof()
--     end
--     package.loaders[3] = nil
--     package.loaders[4] = nil



--     -- perf
-- local error = error
-- local sgmatch = string.gmatch

-- -- init Simple and set routes
-- local Simple = {}

-- function Simple:new(request)
--     local instance = {
--         route_name = 'Simple',
--     	request = request
--     }

--     setmetatable(instance, {__index = self})
--     return instance
-- end

-- function Simple:match()
--     local uri = self.request.uri
--     local match = {}
--     local tmp = 1
--     if uri == '/' then
--         return 'index', 'index'
--     end
--     for v in sgmatch(uri , '/([A-Za-z0-9_]+)') do
--         match[tmp] = v
--         tmp = tmp +1
--     end
--     if #match == 1 then
--         return match[1], 'index'
--     else
--         return table.concat(match, '.', 1, #match - 1), match[#match]
--     end
-- end

-- return Simple