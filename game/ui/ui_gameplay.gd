extends Control


@onready var ui_pause = $UIPause
@onready var sounds_label = $UIPause/Panel/VBoxContainer/BtnSounds/Label

var sounds_enabled := true

func _ready():
	update_sounds_ui()

func _on_btn_pause_pressed():
	ui_pause.visible = true


func _on_btn_close_pause_pressed():
	ui_pause.visible = false


func _on_btn_resume_pressed():
	ui_pause.visible = false



func _on_btn_sounds_pressed():
	sounds_enabled = !sounds_enabled
	update_sounds_ui()

func update_sounds_ui():
	var bus := AudioServer.get_bus_index("Master")
	AudioServer.set_bus_mute(bus, sounds_enabled)
	if sounds_enabled:
		sounds_label.text = "Sonido: ON"
	else:
		sounds_label.text = "Sonido: OFF"


func _on_btn_exit_pressed():
	get_tree().change_scene_to_file("res://game/ui/ui_main_menu.tscn")
