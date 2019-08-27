local BasePlugin = require "kong.plugins.base_plugin"
-- local access = require "kong.plugins.hello-world.access"

local AuthHandler = BasePlugin:extend()

AuthHandler.PRIORITY = 2000

function AuthHandler:new()
  AuthHandler.super.new(self, "auth plugin")
end

function AuthHandler:access(conf)
  AuthHandler.super.access(self)

  if conf.enabled then
    ngx.log(ngx.ERR, "auth in action")
    ngx.header["auth"] = "true"
  else
    ngx.log(ngx.ERR, "auth is disabled")
    ngx.header["auth"] = "false"
  end

end

return AuthHandler
