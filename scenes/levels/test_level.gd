extends Node2D

func _process(_delta):
	if $Area2D.has_overlapping_bodies() == true:
		if Input.is_action_just_pressed("interact"):
			$PlayerUI/Inventory/Key.visible = true
