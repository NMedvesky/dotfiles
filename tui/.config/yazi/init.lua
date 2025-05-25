-- require("full-border"):setup()
require("folder-rules"):setup()
-- require("relative-motions"):setup({ show_numbers="relative", show_motion = true })

Header:children_add(function()
	if ya.target_family() ~= "unix" then
		return ui.Line {}
	end
	return ui.Span(ya.user_name() .. "@" .. ya.host_name() .. ":"):fg("blue")
end, 500, Header.LEFT)

