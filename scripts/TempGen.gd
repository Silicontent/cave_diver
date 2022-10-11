extends TileMap

export var world_x = 10
export var world_y = 10


func gen_base():
	for x in world_x:
		for y in world_y:
			var tile_id = 0
			set_cell(x, y, tile_id)
			update_bitmask_area(Vector2(x, y))


func ready() -> void:
	gen_base()
