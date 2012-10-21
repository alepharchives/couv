local native = require 'couv_native'

local uv = {}

-- handle types
uv.UNKNOWN_HANDLE = native.UNKNOWN_HANDLE
uv.ASYNC = native.ASYNC
uv.CHECK = native.CHECK
uv.FS_EVENT = native.FS_EVENT
uv.FS_POLL = native.FS_POLL
uv.HANDLE = native.HANDLE
uv.IDLE = native.IDLE
uv.NAMED_PIPE = native.NAMED_PIPE
uv.POLL = native.POLL
uv.PREPARE = native.PREPARE
uv.PROCESS = native.PROCESS
uv.STREAM = native.STREAM
uv.TCP = native.TCP
uv.TIMER = native.TIMER
uv.TTY = native.TTY
uv.UDP = native.UDP
uv.SIGNAL = native.SIGNAL
uv.FILE = native.FILE
uv.HANDLE_TYPE_MAX = native.HANDLE_TYPE_MAX

uv.JOIN_GROUP = native.JOIN_GROUP
uv.LEAVE_GROUP = native.LEAVE_GROUP

uv.Buffer = native.Buffer

uv.accept = native.accept
uv.listen = native.listen
uv.close = native.close
uv.hrtime = native.hrtime
uv.is_active = native.is_active
uv.is_closing = native.is_closing
uv.is_readable = native.is_readable
uv.is_writable = native.is_writable
uv.read_start = native.read_start
uv.read_stop = native.read_stop
uv.ref = native.ref
uv.unref = native.unref
uv.write = native.write

uv.ip4addr = native.ip4addr
uv.ip6addr = native.ip6addr

uv.default_loop = native.default_loop
uv.get_loop = native.get_loop
uv.now = native.now
uv.run = native.run
uv.run_once = native.run_once
uv.set_loop = native.set_loop

uv.tcp_bind = native.tcp_bind

uv.timer_get_repeat = native.timer_get_repeat
uv.timer_set_repeat = native.timer_set_repeat

uv.udp_bind = native.udp_bind
uv.udp_recv_start = native.udp_recv_start
uv.udp_recv_stop = native.udp_recv_stop

uv.fs_exists = native.fs_exists

-- utility functions

local function error0(err)
  if err then
    error(err, 2)
  end
end

local function error1(ret, err)
  if err then
    error(err, 2)
  end
  return ret
end

-- no return value functions

uv.fs_chmod = function(...)
  return error0(native.fs_chmod(...))
end

uv.fs_chown = function(...)
  return error0(native.fs_chown(...))
end

uv.fs_close = function(...)
  return error0(native.fs_close(...))
end

uv.fs_fchmod = function(...)
  return error0(native.fs_fchmod(...))
end

uv.fs_fchown = function(...)
  return error0(native.fs_fchown(...))
end

uv.fs_fsync = function(...)
  return error0(native.fs_fsync(...))
end

uv.fs_ftruncate = function(...)
  return error0(native.fs_ftruncate(...))
end

uv.fs_futime = function(...)
  return error0(native.fs_futime(...))
end

uv.fs_link = function(...)
  return error0(native.fs_link(...))
end

uv.fs_mkdir = function(...)
  return error0(native.fs_mkdir(...))
end

uv.fs_rename = function(...)
  return error0(native.fs_rename(...))
end

uv.fs_rmdir = function(...)
  return error0(native.fs_rmdir(...))
end

uv.fs_symlink = function(...)
  return error0(native.fs_symlink(...))
end

uv.fs_unlink = function(...)
  return error0(native.fs_unlink(...))
end

uv.fs_utime = function(...)
  return error0(native.fs_utime(...))
end

uv.pipe_bind = function(...)
  return error0(native.pipe_bind(...))
end

uv.pipe_connect = function(...)
  return error0(native.pipe_connect(...))
end

uv.pipe_open = function(...)
  return error0(native.pipe_open(...))
end

uv.shutdown = function(...)
  return error0(native.shutdown(...))
end

uv.tcp_connect = function(...)
  return error0(native.tcp_connect(...))
end

uv.tcp_keepalive = function(...)
  return error0(native.tcp_keepalive(...))
end

uv.tcp_nodelay = function(...)
  return error0(native.tcp_nodelay(...))
end

uv.tcp_open = function(...)
  return error0(native.tcp_open(...))
end

uv.tcp_simultaneous_accepts = function(...)
  return error0(native.tcp_simultaneous_accepts(...))
end

uv.timer_again = function(...)
  return error0(native.timer_again(...))
end

uv.timer_stop = function(...)
  return error0(native.timer_stop(...))
end

uv.timer_start = function(...)
  return error0(native.timer_start(...))
end

uv.udp_open = function(...)
  return error0(native.udp_open(...))
end

uv.udp_send = function(...)
  return error0(native.udp_send(...))
end

uv.udp_set_broadcast = function(...)
  return error0(native.udp_set_broadcast(...))
end

uv.udp_set_membership = function(...)
  return error0(native.udp_set_membership(...))
end

uv.udp_set_multicast_loop = function(...)
  return error0(native.udp_set_multicast_loop(...))
end

uv.udp_set_multicast_ttl = function(...)
  return error0(native.udp_set_multicast_ttl(...))
end

uv.udp_set_ttl = function(...)
  return error0(native.udp_set_ttl(...))
end

-- one return value functions

uv.fs_open = function(...)
  return error1(native.fs_open(...))
end

uv.fs_read = function(...)
  return error1(native.fs_read(...))
end

uv.fs_write = function(...)
  return error1(native.fs_write(...))
end

uv.fs_lstat = function(...)
  return error1(native.fs_lstat(...))
end

uv.fs_fstat = function(...)
  return error1(native.fs_fstat(...))
end

uv.fs_stat = function(...)
  return error1(native.fs_stat(...))
end

uv.fs_readlink = function(...)
  return error1(native.fs_readlink(...))
end

uv.fs_readdir = function(...)
  return error1(native.fs_readdir(...))
end

uv.pipe_create = function(...)
  return error1(native.pipe_create(...))
end

uv.tcp_create = function(...)
  return error1(native.tcp_create(...))
end

uv.timer_create = function(...)
  return error1(native.timer_create(...))
end

uv.tcp_getpeername = function(...)
  return error1(native.tcp_getpeername(...))
end

uv.tcp_getsockname = function(...)
  return error1(native.tcp_getsockname(...))
end

uv.udp_create = function(...)
  return error1(native.udp_create(...))
end

uv.udp_getsockname = function(...)
  return error1(native.udp_getsockname(...))
end

-- wrapper functions to circumvent the limitation that C function cannot yield
-- by calling them inside a loop in lua.

uv.udp_recv = function(handle)
  local nread, buf, addr
  repeat
    nread, buf, addr = native.udp_prim_recv(handle)
  until nread
  return nread, buf, addr
end

uv.read = function(handle)
  local nread, buf
  repeat
    nread, buf = native.prim_read(handle)
  until nread
  return nread, buf
end

uv.read2 = function(...)
  local nread, buf, pending
  repeat
    nread, buf, pending = native.prim_read2(...)
  until nread
  return nread, buf, pending
end

return uv
