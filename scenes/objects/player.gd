extends CharacterBody2D

const tile_size: Vector2 = Vector2(16, 16)

func _physics_process(_delta: float) -> void:	
	if Input.is_action_pressed("move_up"):
		if !$Up.is_colliding() or ($Up.get_collider() != null and $Up.get_collider().is_in_group("Wall")):
			_move(Vector2(0, -1))
	elif Input.is_action_pressed("move_down"):
		if !$Down.is_colliding() or ($Down.get_collider() != null and $Down.get_collider().is_in_group("Wall")):
			_move(Vector2(0, 1))
	elif Input.is_action_pressed("move_left"):
		if !$Left.is_colliding() or ($Left.get_collider() != null and $Left.get_collider().is_in_group("Wall")):
			_move(Vector2(-1, 0))
	elif Input.is_action_pressed("move_right"):
		if !$Right.is_colliding() or ($Right.get_collider() != null and $Right.get_collider().is_in_group("Wall")):
			_move(Vector2(1, 0))

func _move(dir: Vector2):
	global_position += dir * tile_size
