extends Button

func _ready():
	pass

func _on_ShowMods_pressed():
	var conf_dialog = get_node_or_null("/root/Global/Menu/ConfirmationDialog")
	if conf_dialog:
		conf_dialog.popup(Rect2(get_global_mouse_position(), Vector2(256, 128)))
		conf_dialog.dialog_text = "Installed mods:\n"
		for mod in Global.MODS:
			conf_dialog.dialog_text += mod["name"] + "\n"
