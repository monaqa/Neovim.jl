struct Buffer
    client::NvimClient
end
struct Window
    client::NvimClient
end
struct Tabpage
    client::NvimClient
end

# type aliases
Boolean = Bool
Dictionary = Dict
ArrayOf(t::Type) = Array{t}
Object = Any
void = Nothing

function call_api(cli::NvimClient, funcname::String, d_args::Dict)
end

function nvim_buf_line_count(cli::NvimClient, buffer::Buffer) :: Integer
    return call_api(cli, "nvim_buf_line_count", Dict("buffer"=>buffer))
end

function buffer_get_line(cli::NvimClient, buffer::Buffer, index::Integer) :: String
    return call_api(cli, "buffer_get_line", Dict("buffer"=>buffer, "index"=>index))
end

function nvim_buf_attach(cli::NvimClient, buffer::Buffer, send_buffer::Boolean, opts::Dictionary) :: Boolean
    return call_api(cli, "nvim_buf_attach", Dict("buffer"=>buffer, "send_buffer"=>send_buffer, "opts"=>opts))
end

function nvim_buf_detach(cli::NvimClient, buffer::Buffer) :: Boolean
    return call_api(cli, "nvim_buf_detach", Dict("buffer"=>buffer))
end

function buffer_set_line(cli::NvimClient, buffer::Buffer, index::Integer, line::String) :: void
    return call_api(cli, "buffer_set_line", Dict("buffer"=>buffer, "index"=>index, "line"=>line))
end

function buffer_del_line(cli::NvimClient, buffer::Buffer, index::Integer) :: void
    return call_api(cli, "buffer_del_line", Dict("buffer"=>buffer, "index"=>index))
end

function buffer_get_line_slice(cli::NvimClient, buffer::Buffer, start::Integer, _end::Integer, include_start::Boolean, include_end::Boolean) :: ArrayOf(String)
    return call_api(cli, "buffer_get_line_slice", Dict("buffer"=>buffer, "start"=>start, "end"=>_end, "include_start"=>include_start, "include_end"=>include_end))
end

function nvim_buf_get_lines(cli::NvimClient, buffer::Buffer, start::Integer, _end::Integer, strict_indexing::Boolean) :: ArrayOf(String)
    return call_api(cli, "nvim_buf_get_lines", Dict("buffer"=>buffer, "start"=>start, "end"=>_end, "strict_indexing"=>strict_indexing))
end

function buffer_set_line_slice(cli::NvimClient, buffer::Buffer, start::Integer, _end::Integer, include_start::Boolean, include_end::Boolean, replacement::ArrayOf(String)) :: void
    return call_api(cli, "buffer_set_line_slice", Dict("buffer"=>buffer, "start"=>start, "end"=>_end, "include_start"=>include_start, "include_end"=>include_end, "replacement"=>replacement))
end

function nvim_buf_set_lines(cli::NvimClient, buffer::Buffer, start::Integer, _end::Integer, strict_indexing::Boolean, replacement::ArrayOf(String)) :: void
    return call_api(cli, "nvim_buf_set_lines", Dict("buffer"=>buffer, "start"=>start, "end"=>_end, "strict_indexing"=>strict_indexing, "replacement"=>replacement))
end

function nvim_buf_get_offset(cli::NvimClient, buffer::Buffer, index::Integer) :: Integer
    return call_api(cli, "nvim_buf_get_offset", Dict("buffer"=>buffer, "index"=>index))
end

function nvim_buf_get_var(cli::NvimClient, buffer::Buffer, name::String) :: Object
    return call_api(cli, "nvim_buf_get_var", Dict("buffer"=>buffer, "name"=>name))
end

function nvim_buf_get_changedtick(cli::NvimClient, buffer::Buffer) :: Integer
    return call_api(cli, "nvim_buf_get_changedtick", Dict("buffer"=>buffer))
end

function nvim_buf_get_keymap(cli::NvimClient, buffer::Buffer, mode::String) :: ArrayOf(Dictionary)
    return call_api(cli, "nvim_buf_get_keymap", Dict("buffer"=>buffer, "mode"=>mode))
end

function nvim_buf_set_keymap(cli::NvimClient, buffer::Buffer, mode::String, lhs::String, rhs::String, opts::Dictionary) :: void
    return call_api(cli, "nvim_buf_set_keymap", Dict("buffer"=>buffer, "mode"=>mode, "lhs"=>lhs, "rhs"=>rhs, "opts"=>opts))
end

function nvim_buf_del_keymap(cli::NvimClient, buffer::Buffer, mode::String, lhs::String) :: void
    return call_api(cli, "nvim_buf_del_keymap", Dict("buffer"=>buffer, "mode"=>mode, "lhs"=>lhs))
end

function nvim_buf_get_commands(cli::NvimClient, buffer::Buffer, opts::Dictionary) :: Dictionary
    return call_api(cli, "nvim_buf_get_commands", Dict("buffer"=>buffer, "opts"=>opts))
end

function nvim_buf_set_var(cli::NvimClient, buffer::Buffer, name::String, value::Object) :: void
    return call_api(cli, "nvim_buf_set_var", Dict("buffer"=>buffer, "name"=>name, "value"=>value))
end

function nvim_buf_del_var(cli::NvimClient, buffer::Buffer, name::String) :: void
    return call_api(cli, "nvim_buf_del_var", Dict("buffer"=>buffer, "name"=>name))
end

function buffer_set_var(cli::NvimClient, buffer::Buffer, name::String, value::Object) :: Object
    return call_api(cli, "buffer_set_var", Dict("buffer"=>buffer, "name"=>name, "value"=>value))
end

function buffer_del_var(cli::NvimClient, buffer::Buffer, name::String) :: Object
    return call_api(cli, "buffer_del_var", Dict("buffer"=>buffer, "name"=>name))
end

function nvim_buf_get_option(cli::NvimClient, buffer::Buffer, name::String) :: Object
    return call_api(cli, "nvim_buf_get_option", Dict("buffer"=>buffer, "name"=>name))
end

function nvim_buf_set_option(cli::NvimClient, buffer::Buffer, name::String, value::Object) :: void
    return call_api(cli, "nvim_buf_set_option", Dict("buffer"=>buffer, "name"=>name, "value"=>value))
end

function nvim_buf_get_number(cli::NvimClient, buffer::Buffer) :: Integer
    return call_api(cli, "nvim_buf_get_number", Dict("buffer"=>buffer))
end

function nvim_buf_get_name(cli::NvimClient, buffer::Buffer) :: String
    return call_api(cli, "nvim_buf_get_name", Dict("buffer"=>buffer))
end

function nvim_buf_set_name(cli::NvimClient, buffer::Buffer, name::String) :: void
    return call_api(cli, "nvim_buf_set_name", Dict("buffer"=>buffer, "name"=>name))
end

function nvim_buf_is_loaded(cli::NvimClient, buffer::Buffer) :: Boolean
    return call_api(cli, "nvim_buf_is_loaded", Dict("buffer"=>buffer))
end

function nvim_buf_is_valid(cli::NvimClient, buffer::Buffer) :: Boolean
    return call_api(cli, "nvim_buf_is_valid", Dict("buffer"=>buffer))
end

function buffer_insert(cli::NvimClient, buffer::Buffer, lnum::Integer, lines::ArrayOf(String)) :: void
    return call_api(cli, "buffer_insert", Dict("buffer"=>buffer, "lnum"=>lnum, "lines"=>lines))
end

function nvim_buf_get_mark(cli::NvimClient, buffer::Buffer, name::String) :: ArrayOf(Integer, 2)
    return call_api(cli, "nvim_buf_get_mark", Dict("buffer"=>buffer, "name"=>name))
end

function nvim_buf_add_highlight(cli::NvimClient, buffer::Buffer, ns_id::Integer, hl_group::String, line::Integer, col_start::Integer, col_end::Integer) :: Integer
    return call_api(cli, "nvim_buf_add_highlight", Dict("buffer"=>buffer, "ns_id"=>ns_id, "hl_group"=>hl_group, "line"=>line, "col_start"=>col_start, "col_end"=>col_end))
end

function nvim_buf_clear_namespace(cli::NvimClient, buffer::Buffer, ns_id::Integer, line_start::Integer, line_end::Integer) :: void
    return call_api(cli, "nvim_buf_clear_namespace", Dict("buffer"=>buffer, "ns_id"=>ns_id, "line_start"=>line_start, "line_end"=>line_end))
end

function nvim_buf_clear_highlight(cli::NvimClient, buffer::Buffer, ns_id::Integer, line_start::Integer, line_end::Integer) :: void
    return call_api(cli, "nvim_buf_clear_highlight", Dict("buffer"=>buffer, "ns_id"=>ns_id, "line_start"=>line_start, "line_end"=>line_end))
end

function nvim_buf_set_virtual_text(cli::NvimClient, buffer::Buffer, ns_id::Integer, line::Integer, chunks::Array, opts::Dictionary) :: Integer
    return call_api(cli, "nvim_buf_set_virtual_text", Dict("buffer"=>buffer, "ns_id"=>ns_id, "line"=>line, "chunks"=>chunks, "opts"=>opts))
end

function nvim_tabpage_list_wins(cli::NvimClient, tabpage::Tabpage) :: ArrayOf(Window)
    return call_api(cli, "nvim_tabpage_list_wins", Dict("tabpage"=>tabpage))
end

function nvim_tabpage_get_var(cli::NvimClient, tabpage::Tabpage, name::String) :: Object
    return call_api(cli, "nvim_tabpage_get_var", Dict("tabpage"=>tabpage, "name"=>name))
end

function nvim_tabpage_set_var(cli::NvimClient, tabpage::Tabpage, name::String, value::Object) :: void
    return call_api(cli, "nvim_tabpage_set_var", Dict("tabpage"=>tabpage, "name"=>name, "value"=>value))
end

function nvim_tabpage_del_var(cli::NvimClient, tabpage::Tabpage, name::String) :: void
    return call_api(cli, "nvim_tabpage_del_var", Dict("tabpage"=>tabpage, "name"=>name))
end

function tabpage_set_var(cli::NvimClient, tabpage::Tabpage, name::String, value::Object) :: Object
    return call_api(cli, "tabpage_set_var", Dict("tabpage"=>tabpage, "name"=>name, "value"=>value))
end

function tabpage_del_var(cli::NvimClient, tabpage::Tabpage, name::String) :: Object
    return call_api(cli, "tabpage_del_var", Dict("tabpage"=>tabpage, "name"=>name))
end

function nvim_tabpage_get_win(cli::NvimClient, tabpage::Tabpage) :: Window
    return call_api(cli, "nvim_tabpage_get_win", Dict("tabpage"=>tabpage))
end

function nvim_tabpage_get_number(cli::NvimClient, tabpage::Tabpage) :: Integer
    return call_api(cli, "nvim_tabpage_get_number", Dict("tabpage"=>tabpage))
end

function nvim_tabpage_is_valid(cli::NvimClient, tabpage::Tabpage) :: Boolean
    return call_api(cli, "nvim_tabpage_is_valid", Dict("tabpage"=>tabpage))
end

function nvim_ui_attach(cli::NvimClient, width::Integer, height::Integer, options::Dictionary) :: void
    return call_api(cli, "nvim_ui_attach", Dict("width"=>width, "height"=>height, "options"=>options))
end

function ui_attach(cli::NvimClient, width::Integer, height::Integer, enable_rgb::Boolean) :: void
    return call_api(cli, "ui_attach", Dict("width"=>width, "height"=>height, "enable_rgb"=>enable_rgb))
end

function nvim_ui_detach(cli::NvimClient, ) :: void
    return call_api(cli, "nvim_ui_detach", Dict())
end

function nvim_ui_try_resize(cli::NvimClient, width::Integer, height::Integer) :: void
    return call_api(cli, "nvim_ui_try_resize", Dict("width"=>width, "height"=>height))
end

function nvim_ui_set_option(cli::NvimClient, name::String, value::Object) :: void
    return call_api(cli, "nvim_ui_set_option", Dict("name"=>name, "value"=>value))
end

function nvim_ui_try_resize_grid(cli::NvimClient, grid::Integer, width::Integer, height::Integer) :: void
    return call_api(cli, "nvim_ui_try_resize_grid", Dict("grid"=>grid, "width"=>width, "height"=>height))
end

function nvim_ui_pum_set_height(cli::NvimClient, height::Integer) :: void
    return call_api(cli, "nvim_ui_pum_set_height", Dict("height"=>height))
end

function nvim_command(cli::NvimClient, command::String) :: void
    return call_api(cli, "nvim_command", Dict("command"=>command))
end

function nvim_get_hl_by_name(cli::NvimClient, name::String, rgb::Boolean) :: Dictionary
    return call_api(cli, "nvim_get_hl_by_name", Dict("name"=>name, "rgb"=>rgb))
end

function nvim_get_hl_by_id(cli::NvimClient, hl_id::Integer, rgb::Boolean) :: Dictionary
    return call_api(cli, "nvim_get_hl_by_id", Dict("hl_id"=>hl_id, "rgb"=>rgb))
end

function nvim_feedkeys(cli::NvimClient, keys::String, mode::String, escape_csi::Boolean) :: void
    return call_api(cli, "nvim_feedkeys", Dict("keys"=>keys, "mode"=>mode, "escape_csi"=>escape_csi))
end

function nvim_input(cli::NvimClient, keys::String) :: Integer
    return call_api(cli, "nvim_input", Dict("keys"=>keys))
end

function nvim_input_mouse(cli::NvimClient, button::String, action::String, modifier::String, grid::Integer, row::Integer, col::Integer) :: void
    return call_api(cli, "nvim_input_mouse", Dict("button"=>button, "action"=>action, "modifier"=>modifier, "grid"=>grid, "row"=>row, "col"=>col))
end

function nvim_replace_termcodes(cli::NvimClient, str::String, from_part::Boolean, do_lt::Boolean, special::Boolean) :: String
    return call_api(cli, "nvim_replace_termcodes", Dict("str"=>str, "from_part"=>from_part, "do_lt"=>do_lt, "special"=>special))
end

function nvim_command_output(cli::NvimClient, command::String) :: String
    return call_api(cli, "nvim_command_output", Dict("command"=>command))
end

function nvim_eval(cli::NvimClient, expr::String) :: Object
    return call_api(cli, "nvim_eval", Dict("expr"=>expr))
end

function nvim_execute_lua(cli::NvimClient, code::String, args::Array) :: Object
    return call_api(cli, "nvim_execute_lua", Dict("code"=>code, "args"=>args))
end

function nvim_call_function(cli::NvimClient, fn::String, args::Array) :: Object
    return call_api(cli, "nvim_call_function", Dict("fn"=>fn, "args"=>args))
end

function nvim_call_dict_function(cli::NvimClient, dict::Object, fn::String, args::Array) :: Object
    return call_api(cli, "nvim_call_dict_function", Dict("dict"=>dict, "fn"=>fn, "args"=>args))
end

function nvim_strwidth(cli::NvimClient, text::String) :: Integer
    return call_api(cli, "nvim_strwidth", Dict("text"=>text))
end

function nvim_list_runtime_paths(cli::NvimClient, ) :: ArrayOf(String)
    return call_api(cli, "nvim_list_runtime_paths", Dict())
end

function nvim_set_current_dir(cli::NvimClient, dir::String) :: void
    return call_api(cli, "nvim_set_current_dir", Dict("dir"=>dir))
end

function nvim_get_current_line(cli::NvimClient, ) :: String
    return call_api(cli, "nvim_get_current_line", Dict())
end

function nvim_set_current_line(cli::NvimClient, line::String) :: void
    return call_api(cli, "nvim_set_current_line", Dict("line"=>line))
end

function nvim_del_current_line(cli::NvimClient, ) :: void
    return call_api(cli, "nvim_del_current_line", Dict())
end

function nvim_get_var(cli::NvimClient, name::String) :: Object
    return call_api(cli, "nvim_get_var", Dict("name"=>name))
end

function nvim_set_var(cli::NvimClient, name::String, value::Object) :: void
    return call_api(cli, "nvim_set_var", Dict("name"=>name, "value"=>value))
end

function nvim_del_var(cli::NvimClient, name::String) :: void
    return call_api(cli, "nvim_del_var", Dict("name"=>name))
end

function vim_set_var(cli::NvimClient, name::String, value::Object) :: Object
    return call_api(cli, "vim_set_var", Dict("name"=>name, "value"=>value))
end

function vim_del_var(cli::NvimClient, name::String) :: Object
    return call_api(cli, "vim_del_var", Dict("name"=>name))
end

function nvim_get_vvar(cli::NvimClient, name::String) :: Object
    return call_api(cli, "nvim_get_vvar", Dict("name"=>name))
end

function nvim_set_vvar(cli::NvimClient, name::String, value::Object) :: void
    return call_api(cli, "nvim_set_vvar", Dict("name"=>name, "value"=>value))
end

function nvim_get_option(cli::NvimClient, name::String) :: Object
    return call_api(cli, "nvim_get_option", Dict("name"=>name))
end

function nvim_set_option(cli::NvimClient, name::String, value::Object) :: void
    return call_api(cli, "nvim_set_option", Dict("name"=>name, "value"=>value))
end

function nvim_out_write(cli::NvimClient, str::String) :: void
    return call_api(cli, "nvim_out_write", Dict("str"=>str))
end

function nvim_err_write(cli::NvimClient, str::String) :: void
    return call_api(cli, "nvim_err_write", Dict("str"=>str))
end

function nvim_err_writeln(cli::NvimClient, str::String) :: void
    return call_api(cli, "nvim_err_writeln", Dict("str"=>str))
end

function nvim_list_bufs(cli::NvimClient, ) :: ArrayOf(Buffer)
    return call_api(cli, "nvim_list_bufs", Dict())
end

function nvim_get_current_buf(cli::NvimClient, ) :: Buffer
    return call_api(cli, "nvim_get_current_buf", Dict())
end

function nvim_set_current_buf(cli::NvimClient, buffer::Buffer) :: void
    return call_api(cli, "nvim_set_current_buf", Dict("buffer"=>buffer))
end

function nvim_list_wins(cli::NvimClient, ) :: ArrayOf(Window)
    return call_api(cli, "nvim_list_wins", Dict())
end

function nvim_get_current_win(cli::NvimClient, ) :: Window
    return call_api(cli, "nvim_get_current_win", Dict())
end

function nvim_set_current_win(cli::NvimClient, window::Window) :: void
    return call_api(cli, "nvim_set_current_win", Dict("window"=>window))
end

function nvim_create_buf(cli::NvimClient, listed::Boolean, scratch::Boolean) :: Buffer
    return call_api(cli, "nvim_create_buf", Dict("listed"=>listed, "scratch"=>scratch))
end

function nvim_open_win(cli::NvimClient, buffer::Buffer, enter::Boolean, config::Dictionary) :: Window
    return call_api(cli, "nvim_open_win", Dict("buffer"=>buffer, "enter"=>enter, "config"=>config))
end

function nvim_list_tabpages(cli::NvimClient, ) :: ArrayOf(Tabpage)
    return call_api(cli, "nvim_list_tabpages", Dict())
end

function nvim_get_current_tabpage(cli::NvimClient, ) :: Tabpage
    return call_api(cli, "nvim_get_current_tabpage", Dict())
end

function nvim_set_current_tabpage(cli::NvimClient, tabpage::Tabpage) :: void
    return call_api(cli, "nvim_set_current_tabpage", Dict("tabpage"=>tabpage))
end

function nvim_create_namespace(cli::NvimClient, name::String) :: Integer
    return call_api(cli, "nvim_create_namespace", Dict("name"=>name))
end

function nvim_get_namespaces(cli::NvimClient, ) :: Dictionary
    return call_api(cli, "nvim_get_namespaces", Dict())
end

function nvim_paste(cli::NvimClient, data::String, crlf::Boolean, phase::Integer) :: Boolean
    return call_api(cli, "nvim_paste", Dict("data"=>data, "crlf"=>crlf, "phase"=>phase))
end

function nvim_put(cli::NvimClient, lines::ArrayOf(String), type::String, after::Boolean, follow::Boolean) :: void
    return call_api(cli, "nvim_put", Dict("lines"=>lines, "type"=>type, "after"=>after, "follow"=>follow))
end

function nvim_subscribe(cli::NvimClient, event::String) :: void
    return call_api(cli, "nvim_subscribe", Dict("event"=>event))
end

function nvim_unsubscribe(cli::NvimClient, event::String) :: void
    return call_api(cli, "nvim_unsubscribe", Dict("event"=>event))
end

function nvim_get_color_by_name(cli::NvimClient, name::String) :: Integer
    return call_api(cli, "nvim_get_color_by_name", Dict("name"=>name))
end

function nvim_get_color_map(cli::NvimClient, ) :: Dictionary
    return call_api(cli, "nvim_get_color_map", Dict())
end

function nvim_get_context(cli::NvimClient, opts::Dictionary) :: Dictionary
    return call_api(cli, "nvim_get_context", Dict("opts"=>opts))
end

function nvim_load_context(cli::NvimClient, dict::Dictionary) :: Object
    return call_api(cli, "nvim_load_context", Dict("dict"=>dict))
end

function nvim_get_mode(cli::NvimClient, ) :: Dictionary
    return call_api(cli, "nvim_get_mode", Dict())
end

function nvim_get_keymap(cli::NvimClient, mode::String) :: ArrayOf(Dictionary)
    return call_api(cli, "nvim_get_keymap", Dict("mode"=>mode))
end

function nvim_set_keymap(cli::NvimClient, mode::String, lhs::String, rhs::String, opts::Dictionary) :: void
    return call_api(cli, "nvim_set_keymap", Dict("mode"=>mode, "lhs"=>lhs, "rhs"=>rhs, "opts"=>opts))
end

function nvim_del_keymap(cli::NvimClient, mode::String, lhs::String) :: void
    return call_api(cli, "nvim_del_keymap", Dict("mode"=>mode, "lhs"=>lhs))
end

function nvim_get_commands(cli::NvimClient, opts::Dictionary) :: Dictionary
    return call_api(cli, "nvim_get_commands", Dict("opts"=>opts))
end

function nvim_get_api_info(cli::NvimClient, ) :: Array
    return call_api(cli, "nvim_get_api_info", Dict())
end

function nvim_set_client_info(cli::NvimClient, name::String, version::Dictionary, type::String, methods::Dictionary, attributes::Dictionary) :: void
    return call_api(cli, "nvim_set_client_info", Dict("name"=>name, "version"=>version, "type"=>type, "methods"=>methods, "attributes"=>attributes))
end

function nvim_get_chan_info(cli::NvimClient, chan::Integer) :: Dictionary
    return call_api(cli, "nvim_get_chan_info", Dict("chan"=>chan))
end

function nvim_list_chans(cli::NvimClient, ) :: Array
    return call_api(cli, "nvim_list_chans", Dict())
end

function nvim_call_atomic(cli::NvimClient, calls::Array) :: Array
    return call_api(cli, "nvim_call_atomic", Dict("calls"=>calls))
end

function nvim_parse_expression(cli::NvimClient, expr::String, flags::String, highlight::Boolean) :: Dictionary
    return call_api(cli, "nvim_parse_expression", Dict("expr"=>expr, "flags"=>flags, "highlight"=>highlight))
end

function nvim_list_uis(cli::NvimClient, ) :: Array
    return call_api(cli, "nvim_list_uis", Dict())
end

function nvim_get_proc_children(cli::NvimClient, pid::Integer) :: Array
    return call_api(cli, "nvim_get_proc_children", Dict("pid"=>pid))
end

function nvim_get_proc(cli::NvimClient, pid::Integer) :: Object
    return call_api(cli, "nvim_get_proc", Dict("pid"=>pid))
end

function nvim_select_popupmenu_item(cli::NvimClient, item::Integer, insert::Boolean, finish::Boolean, opts::Dictionary) :: void
    return call_api(cli, "nvim_select_popupmenu_item", Dict("item"=>item, "insert"=>insert, "finish"=>finish, "opts"=>opts))
end

function nvim_win_get_buf(cli::NvimClient, window::Window) :: Buffer
    return call_api(cli, "nvim_win_get_buf", Dict("window"=>window))
end

function nvim_win_set_buf(cli::NvimClient, window::Window, buffer::Buffer) :: void
    return call_api(cli, "nvim_win_set_buf", Dict("window"=>window, "buffer"=>buffer))
end

function nvim_win_get_cursor(cli::NvimClient, window::Window) :: ArrayOf(Integer, 2)
    return call_api(cli, "nvim_win_get_cursor", Dict("window"=>window))
end

function nvim_win_set_cursor(cli::NvimClient, window::Window, pos::ArrayOf(Integer, 2)) :: void
    return call_api(cli, "nvim_win_set_cursor", Dict("window"=>window, "pos"=>pos))
end

function nvim_win_get_height(cli::NvimClient, window::Window) :: Integer
    return call_api(cli, "nvim_win_get_height", Dict("window"=>window))
end

function nvim_win_set_height(cli::NvimClient, window::Window, height::Integer) :: void
    return call_api(cli, "nvim_win_set_height", Dict("window"=>window, "height"=>height))
end

function nvim_win_get_width(cli::NvimClient, window::Window) :: Integer
    return call_api(cli, "nvim_win_get_width", Dict("window"=>window))
end

function nvim_win_set_width(cli::NvimClient, window::Window, width::Integer) :: void
    return call_api(cli, "nvim_win_set_width", Dict("window"=>window, "width"=>width))
end

function nvim_win_get_var(cli::NvimClient, window::Window, name::String) :: Object
    return call_api(cli, "nvim_win_get_var", Dict("window"=>window, "name"=>name))
end

function nvim_win_set_var(cli::NvimClient, window::Window, name::String, value::Object) :: void
    return call_api(cli, "nvim_win_set_var", Dict("window"=>window, "name"=>name, "value"=>value))
end

function nvim_win_del_var(cli::NvimClient, window::Window, name::String) :: void
    return call_api(cli, "nvim_win_del_var", Dict("window"=>window, "name"=>name))
end

function window_set_var(cli::NvimClient, window::Window, name::String, value::Object) :: Object
    return call_api(cli, "window_set_var", Dict("window"=>window, "name"=>name, "value"=>value))
end

function window_del_var(cli::NvimClient, window::Window, name::String) :: Object
    return call_api(cli, "window_del_var", Dict("window"=>window, "name"=>name))
end

function nvim_win_get_option(cli::NvimClient, window::Window, name::String) :: Object
    return call_api(cli, "nvim_win_get_option", Dict("window"=>window, "name"=>name))
end

function nvim_win_set_option(cli::NvimClient, window::Window, name::String, value::Object) :: void
    return call_api(cli, "nvim_win_set_option", Dict("window"=>window, "name"=>name, "value"=>value))
end

function nvim_win_get_position(cli::NvimClient, window::Window) :: ArrayOf(Integer, 2)
    return call_api(cli, "nvim_win_get_position", Dict("window"=>window))
end

function nvim_win_get_tabpage(cli::NvimClient, window::Window) :: Tabpage
    return call_api(cli, "nvim_win_get_tabpage", Dict("window"=>window))
end

function nvim_win_get_number(cli::NvimClient, window::Window) :: Integer
    return call_api(cli, "nvim_win_get_number", Dict("window"=>window))
end

function nvim_win_is_valid(cli::NvimClient, window::Window) :: Boolean
    return call_api(cli, "nvim_win_is_valid", Dict("window"=>window))
end

function nvim_win_set_config(cli::NvimClient, window::Window, config::Dictionary) :: void
    return call_api(cli, "nvim_win_set_config", Dict("window"=>window, "config"=>config))
end

function nvim_win_get_config(cli::NvimClient, window::Window) :: Dictionary
    return call_api(cli, "nvim_win_get_config", Dict("window"=>window))
end

function nvim_win_close(cli::NvimClient, window::Window, force::Boolean) :: void
    return call_api(cli, "nvim_win_close", Dict("window"=>window, "force"=>force))
end

function buffer_line_count(cli::NvimClient, buffer::Buffer) :: Integer
    return call_api(cli, "buffer_line_count", Dict("buffer"=>buffer))
end

function buffer_get_lines(cli::NvimClient, buffer::Buffer, start::Integer, _end::Integer, strict_indexing::Boolean) :: ArrayOf(String)
    return call_api(cli, "buffer_get_lines", Dict("buffer"=>buffer, "start"=>start, "end"=>_end, "strict_indexing"=>strict_indexing))
end

function buffer_set_lines(cli::NvimClient, buffer::Buffer, start::Integer, _end::Integer, strict_indexing::Boolean, replacement::ArrayOf(String)) :: void
    return call_api(cli, "buffer_set_lines", Dict("buffer"=>buffer, "start"=>start, "end"=>_end, "strict_indexing"=>strict_indexing, "replacement"=>replacement))
end

function buffer_get_var(cli::NvimClient, buffer::Buffer, name::String) :: Object
    return call_api(cli, "buffer_get_var", Dict("buffer"=>buffer, "name"=>name))
end

function buffer_get_option(cli::NvimClient, buffer::Buffer, name::String) :: Object
    return call_api(cli, "buffer_get_option", Dict("buffer"=>buffer, "name"=>name))
end

function buffer_set_option(cli::NvimClient, buffer::Buffer, name::String, value::Object) :: void
    return call_api(cli, "buffer_set_option", Dict("buffer"=>buffer, "name"=>name, "value"=>value))
end

function buffer_get_number(cli::NvimClient, buffer::Buffer) :: Integer
    return call_api(cli, "buffer_get_number", Dict("buffer"=>buffer))
end

function buffer_get_name(cli::NvimClient, buffer::Buffer) :: String
    return call_api(cli, "buffer_get_name", Dict("buffer"=>buffer))
end

function buffer_set_name(cli::NvimClient, buffer::Buffer, name::String) :: void
    return call_api(cli, "buffer_set_name", Dict("buffer"=>buffer, "name"=>name))
end

function buffer_is_valid(cli::NvimClient, buffer::Buffer) :: Boolean
    return call_api(cli, "buffer_is_valid", Dict("buffer"=>buffer))
end

function buffer_get_mark(cli::NvimClient, buffer::Buffer, name::String) :: ArrayOf(Integer, 2)
    return call_api(cli, "buffer_get_mark", Dict("buffer"=>buffer, "name"=>name))
end

function buffer_add_highlight(cli::NvimClient, buffer::Buffer, ns_id::Integer, hl_group::String, line::Integer, col_start::Integer, col_end::Integer) :: Integer
    return call_api(cli, "buffer_add_highlight", Dict("buffer"=>buffer, "ns_id"=>ns_id, "hl_group"=>hl_group, "line"=>line, "col_start"=>col_start, "col_end"=>col_end))
end

function buffer_clear_highlight(cli::NvimClient, buffer::Buffer, ns_id::Integer, line_start::Integer, line_end::Integer) :: void
    return call_api(cli, "buffer_clear_highlight", Dict("buffer"=>buffer, "ns_id"=>ns_id, "line_start"=>line_start, "line_end"=>line_end))
end

function tabpage_get_windows(cli::NvimClient, tabpage::Tabpage) :: ArrayOf(Window)
    return call_api(cli, "tabpage_get_windows", Dict("tabpage"=>tabpage))
end

function tabpage_get_var(cli::NvimClient, tabpage::Tabpage, name::String) :: Object
    return call_api(cli, "tabpage_get_var", Dict("tabpage"=>tabpage, "name"=>name))
end

function tabpage_get_window(cli::NvimClient, tabpage::Tabpage) :: Window
    return call_api(cli, "tabpage_get_window", Dict("tabpage"=>tabpage))
end

function tabpage_is_valid(cli::NvimClient, tabpage::Tabpage) :: Boolean
    return call_api(cli, "tabpage_is_valid", Dict("tabpage"=>tabpage))
end

function ui_detach(cli::NvimClient, ) :: void
    return call_api(cli, "ui_detach", Dict())
end

function ui_try_resize(cli::NvimClient, width::Integer, height::Integer) :: Object
    return call_api(cli, "ui_try_resize", Dict("width"=>width, "height"=>height))
end

function vim_command(cli::NvimClient, command::String) :: void
    return call_api(cli, "vim_command", Dict("command"=>command))
end

function vim_feedkeys(cli::NvimClient, keys::String, mode::String, escape_csi::Boolean) :: void
    return call_api(cli, "vim_feedkeys", Dict("keys"=>keys, "mode"=>mode, "escape_csi"=>escape_csi))
end

function vim_input(cli::NvimClient, keys::String) :: Integer
    return call_api(cli, "vim_input", Dict("keys"=>keys))
end

function vim_replace_termcodes(cli::NvimClient, str::String, from_part::Boolean, do_lt::Boolean, special::Boolean) :: String
    return call_api(cli, "vim_replace_termcodes", Dict("str"=>str, "from_part"=>from_part, "do_lt"=>do_lt, "special"=>special))
end

function vim_command_output(cli::NvimClient, command::String) :: String
    return call_api(cli, "vim_command_output", Dict("command"=>command))
end

function vim_eval(cli::NvimClient, expr::String) :: Object
    return call_api(cli, "vim_eval", Dict("expr"=>expr))
end

function vim_call_function(cli::NvimClient, fn::String, args::Array) :: Object
    return call_api(cli, "vim_call_function", Dict("fn"=>fn, "args"=>args))
end

function vim_strwidth(cli::NvimClient, text::String) :: Integer
    return call_api(cli, "vim_strwidth", Dict("text"=>text))
end

function vim_list_runtime_paths(cli::NvimClient, ) :: ArrayOf(String)
    return call_api(cli, "vim_list_runtime_paths", Dict())
end

function vim_change_directory(cli::NvimClient, dir::String) :: void
    return call_api(cli, "vim_change_directory", Dict("dir"=>dir))
end

function vim_get_current_line(cli::NvimClient, ) :: String
    return call_api(cli, "vim_get_current_line", Dict())
end

function vim_set_current_line(cli::NvimClient, line::String) :: void
    return call_api(cli, "vim_set_current_line", Dict("line"=>line))
end

function vim_del_current_line(cli::NvimClient, ) :: void
    return call_api(cli, "vim_del_current_line", Dict())
end

function vim_get_var(cli::NvimClient, name::String) :: Object
    return call_api(cli, "vim_get_var", Dict("name"=>name))
end

function vim_get_vvar(cli::NvimClient, name::String) :: Object
    return call_api(cli, "vim_get_vvar", Dict("name"=>name))
end

function vim_get_option(cli::NvimClient, name::String) :: Object
    return call_api(cli, "vim_get_option", Dict("name"=>name))
end

function vim_set_option(cli::NvimClient, name::String, value::Object) :: void
    return call_api(cli, "vim_set_option", Dict("name"=>name, "value"=>value))
end

function vim_out_write(cli::NvimClient, str::String) :: void
    return call_api(cli, "vim_out_write", Dict("str"=>str))
end

function vim_err_write(cli::NvimClient, str::String) :: void
    return call_api(cli, "vim_err_write", Dict("str"=>str))
end

function vim_report_error(cli::NvimClient, str::String) :: void
    return call_api(cli, "vim_report_error", Dict("str"=>str))
end

function vim_get_buffers(cli::NvimClient, ) :: ArrayOf(Buffer)
    return call_api(cli, "vim_get_buffers", Dict())
end

function vim_get_current_buffer(cli::NvimClient, ) :: Buffer
    return call_api(cli, "vim_get_current_buffer", Dict())
end

function vim_set_current_buffer(cli::NvimClient, buffer::Buffer) :: void
    return call_api(cli, "vim_set_current_buffer", Dict("buffer"=>buffer))
end

function vim_get_windows(cli::NvimClient, ) :: ArrayOf(Window)
    return call_api(cli, "vim_get_windows", Dict())
end

function vim_get_current_window(cli::NvimClient, ) :: Window
    return call_api(cli, "vim_get_current_window", Dict())
end

function vim_set_current_window(cli::NvimClient, window::Window) :: void
    return call_api(cli, "vim_set_current_window", Dict("window"=>window))
end

function vim_get_tabpages(cli::NvimClient, ) :: ArrayOf(Tabpage)
    return call_api(cli, "vim_get_tabpages", Dict())
end

function vim_get_current_tabpage(cli::NvimClient, ) :: Tabpage
    return call_api(cli, "vim_get_current_tabpage", Dict())
end

function vim_set_current_tabpage(cli::NvimClient, tabpage::Tabpage) :: void
    return call_api(cli, "vim_set_current_tabpage", Dict("tabpage"=>tabpage))
end

function vim_subscribe(cli::NvimClient, event::String) :: void
    return call_api(cli, "vim_subscribe", Dict("event"=>event))
end

function vim_unsubscribe(cli::NvimClient, event::String) :: void
    return call_api(cli, "vim_unsubscribe", Dict("event"=>event))
end

function vim_name_to_color(cli::NvimClient, name::String) :: Integer
    return call_api(cli, "vim_name_to_color", Dict("name"=>name))
end

function vim_get_color_map(cli::NvimClient, ) :: Dictionary
    return call_api(cli, "vim_get_color_map", Dict())
end

function vim_get_api_info(cli::NvimClient, ) :: Array
    return call_api(cli, "vim_get_api_info", Dict())
end

function window_get_buffer(cli::NvimClient, window::Window) :: Buffer
    return call_api(cli, "window_get_buffer", Dict("window"=>window))
end

function window_get_cursor(cli::NvimClient, window::Window) :: ArrayOf(Integer, 2)
    return call_api(cli, "window_get_cursor", Dict("window"=>window))
end

function window_set_cursor(cli::NvimClient, window::Window, pos::ArrayOf(Integer, 2)) :: void
    return call_api(cli, "window_set_cursor", Dict("window"=>window, "pos"=>pos))
end

function window_get_height(cli::NvimClient, window::Window) :: Integer
    return call_api(cli, "window_get_height", Dict("window"=>window))
end

function window_set_height(cli::NvimClient, window::Window, height::Integer) :: void
    return call_api(cli, "window_set_height", Dict("window"=>window, "height"=>height))
end

function window_get_width(cli::NvimClient, window::Window) :: Integer
    return call_api(cli, "window_get_width", Dict("window"=>window))
end

function window_set_width(cli::NvimClient, window::Window, width::Integer) :: void
    return call_api(cli, "window_set_width", Dict("window"=>window, "width"=>width))
end

function window_get_var(cli::NvimClient, window::Window, name::String) :: Object
    return call_api(cli, "window_get_var", Dict("window"=>window, "name"=>name))
end

function window_get_option(cli::NvimClient, window::Window, name::String) :: Object
    return call_api(cli, "window_get_option", Dict("window"=>window, "name"=>name))
end

function window_set_option(cli::NvimClient, window::Window, name::String, value::Object) :: void
    return call_api(cli, "window_set_option", Dict("window"=>window, "name"=>name, "value"=>value))
end

function window_get_position(cli::NvimClient, window::Window) :: ArrayOf(Integer, 2)
    return call_api(cli, "window_get_position", Dict("window"=>window))
end

function window_get_tabpage(cli::NvimClient, window::Window) :: Tabpage
    return call_api(cli, "window_get_tabpage", Dict("window"=>window))
end

function window_is_valid(cli::NvimClient, window::Window) :: Boolean
    return call_api(cli, "window_is_valid", Dict("window"=>window))
end

