local config = require('config.application')
local app = require('vanilla.v.application'):new(config)
pp(ngx.zhou)
app:bootstrap():run()