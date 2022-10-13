extends TileMap

export (int) var world_x = 10
export (int) var world_y = 10

var snap_x = 16
var snap_y = 16


# WORLD ELEVATION GENERATION ---------------------------------------------
func gen_base():
	for x in world_x:
		for y in world_y:
			var tile_id = 0
			set_cell(x, y, tile_id)
			update_bitmask_area(Vector2(x, y))


func _ready() -> void:
	gen_base()
