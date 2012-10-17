local uv = require 'couv'

local exports = {}

exports['udp.send_and_recv'] = function(test)
  local server = coroutine.create(function()
    local handle = uv.udp_create()
    uv.udp_bind(handle, uv.ip4addr('127.0.0.1', 62001))
    uv.udp_recv_start(handle)
    local nread, buf, addr = uv.udp_recv(handle)
    test.equal(nread, #'helloworld')
    test.equal(buf:toString(1, nread), 'helloworld')
    test.equal(addr:host(), '127.0.0.1')
    test.is_number(addr:port())
    uv.udp_recv_stop(handle)
    uv.udp_close(handle)
  end)
  coroutine.resume(server)
  
  local client = coroutine.create(function()
    local handle = uv.udp_create()
    uv.udp_send(handle, uv.ip4addr('127.0.0.1', 62001), {"hello", "world"})
    uv.close(handle)
  end)
  coroutine.resume(client)

  uv.run()
  test.done()
end

--[[
exports['udp.send_and_recv_twice'] = function(test)
  local server = coroutine.create(function()
    local handle = uv.udp_create()
    uv.udp_bind(handle, uv.ip4addr('127.0.0.1', 62001))
    local nread, buf, addr = uv.udp_recv(handle)
    test.equal(nread, #'helloworld')
    test.equal(buf:toString(1, nread), 'helloworld')
    test.equal(addr:host(), '127.0.0.1')
    test.is_number(addr:port())

    nread, buf, addr = uv.udp_recv(handle)
    test.equal(nread, #'hi')
    test.equal(buf:toString(1, nread), 'hi')
    test.equal(addr:host(), '127.0.0.1')
    test.is_number(addr:port())

    uv.udp_close(handle)
  end)
  coroutine.resume(server)
  
  local client = coroutine.create(function()
    local handle = uv.udp_create()
    uv.udp_send(handle, uv.ip4addr('127.0.0.1', 62001), {"hello", "world"})
    uv.udp_send(handle, uv.ip4addr('127.0.0.1', 62001), {"hi"})
    uv.close(handle)
  end)
  coroutine.resume(client)

  uv.run()
  test.done()
end
]]

return exports