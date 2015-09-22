local Bootstrap = require('vanilla.v.bootstrap'):new(dispatcher)

function Bootstrap:initErrorHandle()
    self.dispatcher:setErrorHandler({controller = 'error', action = 'error'})
end

function Bootstrap:initRoute()
    local router = require('vanilla.v.routes.simple'):new(self.dispatcher:getRequest())
    self.dispatcher.router = router
end

function Bootstrap:initView()
end

function Bootstrap:initPlugin()
	local admin_plugin = require('plugins.admin'):new(self.dispatcher:getRequest(),self.dispatcher:getResponse())
	self.dispatcher:registerPlugin(admin_plugin);
end

function Bootstrap:boot_list()
    return {
        Bootstrap.initErrorHandle,
        Bootstrap.initRoute,
        Bootstrap.initPlugin,
        Bootstrap.initView
    }
end

return Bootstrap
