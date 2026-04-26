extends Node2D

func _ready() -> void:
	$CenterContainer/MainButtons/Play.grab_focus()

func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/ui/intro.tscn")


func _on_quit_pressed() -> void:
	get_tree().quit()
