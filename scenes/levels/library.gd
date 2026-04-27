extends Node2D

func _ready():
	$PlayerUI/Inventory/Border.visible = false

func _process(_delta):
	if $BreakDoor.has_overlapping_bodies() == true:
		if Input.is_action_just_pressed("interact"):
			get_tree().change_scene_to_file("res://scenes/levels/break.tscn")
