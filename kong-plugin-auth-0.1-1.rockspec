package = "kong-plugin-auth"
version = "0.1-1"
supported_platforms = {"linux"}
source = {
  url = "git@github.com:Mendez9000/kong-plugin.git",
  tag = "v0.1-1"
}
description = {
  summary = "Custom auth plugin",
  homepage = "https://github.com/Mendez9000/kong-plugin",
  detailed = [[
      Auth test support
  ]],
}
dependencies = {
  "lua ~> 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.auth.handler"] = "src/handler.lua",
    ["kong.plugins.auth.schema"] = "src/schema.lua"
  }
}
