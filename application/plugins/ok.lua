local OkPlugin = require('vanilla.v.plugin'):new()

function OkPlugin:routerStartup(request, response)
	pp('<pre>---------okok')
	if request.method == 'GET' then
		pp('----okok-----------------')
	else
		pp(request.headers)
	end
end

-- function OkPlugin:routerShutdown(request, response)
-- end

-- function OkPlugin:dispatchLoopStartup(request, response)
-- end

-- function OkPlugin:preDispatch(request, response)
-- end

-- function OkPlugin:postDispatch(request, response)
-- end

-- function OkPlugin:dispatchLoopShutdown(request, response)
-- end

return OkPlugin