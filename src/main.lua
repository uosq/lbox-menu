--- made by navet
--- started in 12/06/2025

---@param url string
---@return table?
local function loadurl(url)
	assert(type(url) == "string", "Url is not a string!")

	local contents = http.Get(tostring(url))

	if contents then
		local succ, func = pcall(load, contents)
		if succ and func then
			return func()
		end
	end

	return nil
end

---@return table?
local function loadtab(tab)
	assert(type(tab) == "string", "Tab is not a string!")

	local formatted_url =
		string.format("https://raw.githubusercontent.com/uosq/lbox-menu/refs/heads/main/src/tabs/%s.lua", tab)

	return loadurl(formatted_url)
end

local tabs = {
	loadtab("aimbot"),
	--[[trigger = {},
	esp = {},
	radar = {},
	misc = {},
	lobby = {}, --- not sure how we should make this
	configs = {},]]
}
