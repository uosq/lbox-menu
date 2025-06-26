---@meta

--- version 0.1

---@class WINCTX
---@field x integer? The 'X' coordinate of the window
---@field y integer? The 'Y' coordinate of the window
---@field name string? The 'name' of thewindow
---@field starty integer? Default is 10. Relative to the window's 'Y' coordinate

---@class BUTTONRETURN
---@field leftclick boolean Returns true if it was clicked this tick
---@field rightclick boolean Returns true if it was clicked this tick
---@field middleclick boolean Returns true if it was clicked this tick
---@field draw boolean Returns true if it was drawn correctly

---@class BUTTONCTX
---@field text string? The button's text
---@field font Font? The font to be used (default: "TF2 BUILD")

---@class MENU
local menu = {}

---@param ctx WINCTX The context of the window
--- Starts a new window
function menu:StartWindow(ctx) end

---@return boolean Returns true if it drawed the window correctly
function menu:EndWindow() end

--- Makes a new section
function menu:StartSection() end

---@return boolean Returns true if it was drawed correctly
function menu:EndSection() end

---@param bctx BUTTONCTX The button's context
---@return BUTTONRETURN Returns conditions of the button after it has been drawn
function menu:Button(bctx) end

return menu
