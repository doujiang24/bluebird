local AdminPlugin = require('vanilla.v.plugin'):new()

function AdminPlugin:routerStartup(request, response)
	pp('<pre>')
	if request.method == 'GET' then
		pp('-----------' .. pps(request.headers) .. '----------')
	else
		pp(request.headers)
	end
end

-- function AdminPlugin:routerShutdown(request, response)
-- end

-- function AdminPlugin:dispatchLoopStartup(request, response)
-- end

-- function AdminPlugin:preDispatch(request, response)
-- end

-- function AdminPlugin:postDispatch(request, response)
-- end

-- function AdminPlugin:dispatchLoopShutdown(request, response)
-- end

return AdminPlugin