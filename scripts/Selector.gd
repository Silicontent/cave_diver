extends Area2D

export(int) var snap_size = 16

export(int) var neg_extent = -3
export(int) var pos_extent = 3

var mouse_pos = Vector2.ZERO


func update_snapped_pos():
	mouse_pos = Vector2(int(get_global_mouse_position().x / snap_size),
						int(get_global_mouse_position().y / snap_size))
	
	global_position = mouse_pos * snap_size

func _physics_process(delta):
	update_snapped_pos()
