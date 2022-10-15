extends TileMap

export (int) var world_x = 300
export (int) var world_y = 200

var cave_noise = OpenSimplexNoise.new()

var snap_x = 16
var snap_y = 16


# NOISE SET-UP -----------------------------------------------------------
func set_noise_prop(oct, per, pers, lac):
	var world_seed = randi()
	cave_noise.seed = world_seed
	
	cave_noise.octaves = oct
	cave_noise.period = per
	cave_noise.persistence = pers
	cave_noise.lacunarity = lac


# WORLD ELEVATION GENERATION ---------------------------------------------
func gen_base():
	for x in world_x:
		for y in world_y:
			var tile_id = 0
			set_cell(x, y, tile_id)
			update_bitmask_area(Vector2(x, y))


func gen_caves():
	set_noise_prop(0, 5.0, 0.588, 2.43)
	
	for x in world_x:
		for y in world_y:
			if cave_noise.get_noise_2d(x, y) <= 0.1:
				set_cell(x, y, -1)
			update_bitmask_area(Vector2(x, y))


func _ready() -> void:
	randomize()
	
	gen_base()
	gen_caves()
