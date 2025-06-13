local types = load(http.Get(""))()

return {
	{ type = types.checkbox, name = "aimbot", value = "aim bot" },
	{ type = types.checkbox, name = "aimkey", value = "aim key" },
}
