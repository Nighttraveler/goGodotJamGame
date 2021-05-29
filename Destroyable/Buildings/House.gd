extends "res://Destroyable/Destroyable.gd"

var buildings_path : String = "res://Destroyable/Buildings/Sprites/building"
onready var tilemap : TileMap = $TileMap

func _ready():
	randomize()
	var rng = round(rand_range(6,12))
	sprite.set_texture(load( buildings_path + str(rng) + ".png" ))
	#init_explosion()
	pass 

