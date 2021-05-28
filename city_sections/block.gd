extends Node2D

var building_scene = preload("res://Destroyable/Buildings/Building.tscn")

export var block_size : Vector2 = Vector2(10,3)
export var x_step = 75
export var y_step = 150
var rect2 : Rect2 = Rect2(Vector2(50,50), block_size)

func _ready():
	randomize()
	for x in rect2.size.x:
		for y in rect2.size.y:
			if rand_range(0,1) < 0.9:
				var building = building_scene.instance()
				building.set_position(rect2.position + Vector2(x* x_step, y * y_step))
				add_child(building)



func _input(event):
	if event.is_action_pressed("ui_accept"):
		get_tree().reload_current_scene()

func get_block_size()-> Rect2:
	return rect2
