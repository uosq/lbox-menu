---@module "meta"
local menu = require("nmenu")

local window = menu:make_window()
window.x = 16
window.y = 50
window.width = 400
window.height = 200
window.header = "hi mom!"

menu:make_tab("hi")

local btn1 = menu:make_button()
btn1.x = 10
btn1.y = 10
btn1.width = 100
btn1.height = 25
btn1.label = "hi world"

function btn1.func()
	print("hi")
end

menu:make_tab("hi")

local check = menu:make_checkbox()
check.x = 10
check.y = 10
check.width = 100
check.height = 25
check.label = "hi dad!"

local slider1 = menu:make_slider()
slider1.x = 10
slider1.y = 45
slider1.min = 0
slider1.max = 100
slider1.width = 150
slider1.height = 15

menu:register()
callbacks.Register("Unload", menu.unload)
