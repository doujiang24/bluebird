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
  <img src="http://m1.sinaimg.cn/maxwidth.300/m1.sinaimg.cn/ca65fa784406a36ba4fc41d14e21661e_1364_1494.png">
  <h1><a href = 'https://github.com/idevz/vanilla'>Welcome To Vanilla...</a></h1><h5>Power by Openresty</h5>
</body>
</html>
]], response.body_raw)
        end)
    end)
end)