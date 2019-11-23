module Neovim

using Compat
using MsgPack
import Sockets
import MsgPack: pack, unpack

export NvimClient, nvim_connect, nvim_env, nvim_spawn, nvim_child, start_host
export Buffer, Tabpage, Window
export reply_result, reply_error

# types that have api methods (nvim itself + api defined types)
abstract type NvimObject end
ByteString = String
bytestring(x) = string(x)

include("client.jl")
include("api_gen.jl")
include("api_functions.jl")
include("interface.jl")
include("plugin_host.jl")

# too inconvenient api to supply handler here?
function nvim_connect(path::ByteString, args...)
    s = Sockets.connect(path)
    NvimClient(s, s, args...)
end

nvim_env(args...) = nvim_connect(ENV["NVIM_LISTEN_ADDRESS"], args...)

function nvim_spawn(args...; cmd=`nvim --embed`)
    proc = open(cmd, "r+")
    (NvimClient(proc.in, proc.out, args...), proc)
end

function nvim_child(args...)
    # make stdio private. Reversed since from nvim's perspective
    input, output = stdout, stdin
    if haskey(ENV, "NEOVIM_JL_DEBUG")
        debug = open(ENV["NEOVIM_JL_DEBUG"], "w")
        redirect_stdout(debug)
        redirect_stderr(debug)
    else
        redirect_stdout()
        redirect_stderr()
    end
    redirect_stdin()

    NvimClient(input, output, args...)
end

end
