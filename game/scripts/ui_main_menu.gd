extends Control


@onready var panel_credits = $PanelCredits

func _on_btn_play_pressed():
	get_tree().change_scene_to_file("res://game/scenes/game.tscn")


func _on_btn_credits_pressed():
	panel_credits.visible = true


func _on_btn_close_credits_pressed():
	panel_credits.visible = false
