extends Node2D

var x_step = 845
var y_step = 480

var block_scene = preload("res://city_sections/block.tscn")
var square_scene = preload("res://city_sections/square.tscn")
var district_scene = preload("res://city_sections/district.tscn")
export var max_block_num = 4
func _ready():
	randomize()

	var rect2 = Rect2(Vector2.ZERO, Vector2(round(rand_range(1,max_block_num)),3))
	for x in rect2.size.x:
		for y in rect2.size.y:
			var rng = rand_range(0,1)
			if rng >= 0.9:
				var square = square_scene.instance()
				square.set_position(rect2.position + Vector2(x* x_step, y * y_step))
				add_child(square)
			elif rng <= 0.2:
				var district = district_scene.instance()
				district.set_position(rect2.position + Vector2(x* x_step, y * y_step))
				add_child(district)				
			else:
				var building = block_scene.instance()
				building.set_position(rect2.position + Vector2(x* x_step, y * y_step))
				add_child(building)
