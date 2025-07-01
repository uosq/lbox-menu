---@meta

--- version 0.1
--- any component with width == 0 & height == 0 gets a width and height assigned at menu:register

---@class WINDOW
---@field public x integer The 'X' coordinate of the window (default: 0)
---@field public y integer The 'Y' coordinate of the window (default: 0)
---@field public width integer The 'width' of the window (default: 0)
---@field public height integer The 'height' of the window (default: 0)
---@field public tabs table<integer, {name: string|'', components: table<integer, BUTTON|CHECKBOX>}> The tabs of the window (default: { [1]: {} })
---@field public font Font? The font to be used (default: "TF2 BUILD")
---@field public header string? The window's title bar text
---@field public active_tab_index integer The active tab index (default: 1) | Doesn't need to be changed, NMENU handles it for you

---@class BUTTON
---@field public label string|'' The button's text
---@field public width integer The 'width' size of the button (default: text width + 20 or 100)
---@field public height integer The 'height' size of the button (default: text height + 5 or 20)
---@field public x integer The 'X' coordinate of the button (default: 0)
---@field public y integer The 'Y' coordinate of the button (default: 0)
---@field public func function? The callback of the button when clicked

---@class CHECKBOX
---@field public x integer The 'X' coordinate of the window (default: 0)
---@field public y integer The 'Y' coordinate of the window (default: 0)
---@field public width integer The 'width' of the window (default: 100)
---@field public height integer The 'height' of the window (default: 20)
---@field public label string|'' The text in the checkbox (default: '')
---@field public enabled boolean The 'checked' state of the checkbox (default: false)

---@class SLIDER
---@field font Font?
---@field height integer
---@field width integer
---@field label string
---@field x integer
---@field y integer
---@field min number
---@field max number
---@field value number
---@field func function?

---@class MENU
local menu = {}

--- Registers the callback necessary to make the menu draw
function menu:register() end

--- This sets the current context to be the window created
---@return WINDOW
function menu:make_window() end

---@return integer? Returns the tab index relative to the current window context
---@param name string
function menu:make_tab(name) end

---@return BUTTON?
function menu:make_button() end

---@return CHECKBOX?
function menu:make_checkbox() end

---@return SLIDER?
function menu:make_slider() end

--- Unload function, you should register this as a callback
function menu.unload() end

return menu
