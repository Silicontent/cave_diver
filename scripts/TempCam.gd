extends Camera2D


func _process(delta):
	if Input.is_action_pressed("ui_left"):
		global_position.x -= 10
	if Input.is_action_pressed("ui_right"):
		global_position.x += 10
	if Input.is_action_pressed("ui_up"):
		global_position.y -= 10
	if Input.is_action_pressed("ui_down"):
		global_position.y += 10
