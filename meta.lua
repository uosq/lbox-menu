---@meta

--- version 0.1

---@class WINCTX
---@field public x integer The 'X' coordinate of the window
---@field public y integer The 'Y' coordinate of the window
---@field public name string? The 'name' of thewindow
---@field public starty integer? Default is 10. Relative to the window's 'Y' coordinate
---@field order table<integer, table[]> This is here just for the lsp to not complain. Do NOT mess with it

---@class BUTTONRETURN
---@field leftclick boolean Returns true if it was clicked this tick
---@field rightclick boolean Returns true if it was clicked this tick
---@field middleclick boolean Returns true if it was clicked this tick
---@field draw boolean Returns true if it was drawn correctly

---@class BUTTONCTX
---@field text string? The button's text
---@field font Font? The font to be used (default: "TF2 BUILD")
---@field width integer
---@field height integer

---@class MENU
local menu = {}

---@return WINCTX
function menu:CreateWindowCtx() end

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
