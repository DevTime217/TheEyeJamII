extends Node2D


# Called when the node enters the scene tree for the first time.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("pause"):
		get_tree().paused = true
		$".".visible = true


func _on_resume_pressed() -> void:
	get_tree().paused = false
	$".".visible = false


func _on_quit_pressed() -> void:
	get_tree().quit()
