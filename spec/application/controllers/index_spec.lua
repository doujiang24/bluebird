require 'vanilla.spec.runner'

describe("IndexController", function()

    describe("#index", function()
        it("GET a Hello world", function()
            local response = cgi({
                method = 'GET',
                path = "/"
            })
            assert.are.same(200, response.status)
            assert.are.same([[<!DOCTYPE html>
<html>
<body>
  <img src="http://m1.sinaimg.cn/maxwidth.300/m1.sinaimg.cn/120d7329960e19cf073f264751e8d959_2043_2241.png">
  <h1><a href = 'https://github.com/idevz/vanilla'>Welcome To Vanilla...</a></h1><h5>Power by Openresty</h5>
</body>
</html>
]], response.body_raw)
        end)
    end)
end)