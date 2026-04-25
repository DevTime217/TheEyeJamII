extends CharacterBody2D

const tile_size: Vector2 = Vector2(16, 16)

func _physics_process(_delta: float) -> void:
	if Input.is_action_pressed("move_up"):
		_move(Vector2(0, -1))
	elif Input.is_action_pressed("move_down"):
		_move(Vector2(0, 1))
	elif Input.is_action_pressed("move_left"):
		_move(Vector2(-1, 0))
	elif Input.is_action_pressed("move_right"):
		_move(Vector2(1, 0))

func _move(dir: Vector2):
	global_position += dir * tile_size
