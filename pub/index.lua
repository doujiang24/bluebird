-- local config = require('config.application')
-- local app = require('vanilla.v.application'):new(config)
-- ngx.log(ngx.ERR, '===================>' .. ngx.zhou)

local a = {}

    function pps( ... )
        local helpers = require 'vanilla.v.libs.utils'
        return helpers.pps(...)
    end

    function ppl( ... )
        local rs = pps(...)
        print(rs)
    end

    function pp( ... )
        local rs = pps(...)
        ngx.say(rs)
    end

    function err_log(msg)
        ngx.log(ngx.ERR, "===zjdebug" .. msg .. "===")
    end



function a:run(ngx)
	local re = ngx.req.get_uri_args()
	pp(re.z)
	pp(re)
end

return a
-- app:bootstrap():run()