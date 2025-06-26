---@module "meta"

--[[
StartWindow("Main Window")
	StartSection()
	Button()
	EndSection()
EndWindow()
]]

---@type MENU
local menu = {}

local current_context = nil
local current_y = nil

---@param ctx WINCTX The context of the window
--- Starts a new window
function menu:StartWindow(ctx) end

---@return boolean Returns true if it drawed the window correctly
function menu:EndWindow()
	return true
end

--- Makes a new section
function menu:StartSection() end

---@return boolean Returns true if it was drawed correctly
function menu:EndSection()
	return true
end

---@return BUTTONRETURN Returns conditions of the button
function menu:Button(callback)
	return {}
end

local function DrawMenu() end

local function Unload() end

callbacks.Register("Draw", DrawMenu)
callbacks.Register("Unload", Unload)
return menu
