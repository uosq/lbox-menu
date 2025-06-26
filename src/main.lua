---@module "meta"

--[[
StartWindow("Main Window")
	StartSection()
	Button()
	EndSection()
EndWindow()

=

window's ctx {
	order = 
	{
		[0] = 
		{ section
			{ button
				type = 1,
				text = "",
				font = 123
			}
		}
	}
}

]]

local DEFAULT_STARTY <const> = 10

---@enum MTYPES
local TYPES = {
	button = 0,
	checkbox = 1 << 0,
}

---@type MENU
local menu = {}

---@type WINCTX?
local current_window_context = nil
local current_section_index = 0

function menu:CreateWindowCtx()
	return {
		x = 0,
		y = 0,
		name = "",
		starty = DEFAULT_STARTY,
		order = {},
	}
end

---@param ctx WINCTX The context of the window
--- Starts a new window
function menu:StartWindow(ctx)
	assert(not current_window_context, "Last window's context wasn't cleaned up properly!")

	local name, starty, x, y = ctx.name, ctx.starty, ctx.x, ctx.y
	assert(x or type(x) ~= "number", "Window's 'X' is not a number!")
	assert(y or type(y) ~= "number", "Window's 'Y' is not a number!")

	name = name or ""
	starty = y + starty or y + DEFAULT_STARTY

	--- sanitized window context
	current_window_context = {
		y = y,
		x = x,
		name = name,
		starty = starty,
		order = {},
	}
end

---@return boolean Returns true if it drawed the window correctly
function menu:EndWindow()
	return true
end

--- Makes a new section
function menu:StartSection()
	assert(current_window_context, "Window context is nil!")
	local newindex = #current_window_context.order + 1
	current_section_index = newindex
	current_window_context.order[current_section_index] = {}
end

---@return boolean Returns true if it was drawed correctly
function menu:EndSection()
	if not current_window_context then
		return false
	end

	for _, section in ipairs(current_window_context.order[current_section_index]) do
		local internaly = current_window_context.starty
		for _, item in ipairs(section) do
			if item.type == TYPES.button then
			end
		end

		current_window_context.starty = internaly + 1
	end

	return true
end

---@param bctx BUTTONCTX
---@return BUTTONRETURN Returns conditions of the button
function menu:Button(bctx)
	return {}
end

local function DrawMenu() end

local function Unload() end

callbacks.Register("Draw", DrawMenu)
callbacks.Register("Unload", Unload)
return menu
