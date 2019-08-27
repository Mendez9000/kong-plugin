local _M = {}

function _M.execute(conf)
  if conf.enabled then
    ngx.log(ngx.ERR, "auth is enabled")
    ngx.header["auth"] = true
  else
    ngx.log(ngx.ERR, "auth is disabled")
    ngx.header["auth"] = false
  end
end

function _M.check()
  return "verifiction"
end

return _M
