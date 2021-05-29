extends "res://Destroyable/Destroyable.gd"

var buildings_path : String = "res://Destroyable/Buildings/Sprites/building"
onready var tilemap : TileMap = $TileMap
var explode_script = preload("res://Destroyable/explode_object.gd")
func _ready():
	randomize()
	var rng = randi() % 7 + 1
	sprite.set_texture(load(buildings_path + str(rng) + ".png" ))
	for i in 1:
		tilemap.set_cell((rand_range(-3,3)),1,
		rand_range(35,41))
	#init_explosion()
	pass 

