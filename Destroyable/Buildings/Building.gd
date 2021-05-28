extends "res://Destroyable/Destroyable.gd"

var buildings_path : String = "res://Destroyable/Buildings/Sprites/building"
onready var tilemap : TileMap = $TileMap

func _ready():
	randomize()
	var rng = randi() % 7 + 1
	sprite.set_texture(load(buildings_path + str(rng) + ".png" ))
	
	for i in 1:
		tilemap.set_cell(round(rand_range(-4,3)),1,
		rand_range(39,39))
		
#		tilemap.set_cell(3,round(rand_range(-1,2)),
#		rand_range(35,39))
	pass 

