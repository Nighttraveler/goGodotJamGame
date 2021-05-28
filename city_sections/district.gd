extends Node2D

var house_scene = preload("res://Destroyable/Buildings/House.tscn")

export var block_size : Vector2 = Vector2(7,4)
export var x_step = 110
export var y_step = 100
var rect2 : Rect2 = Rect2(Vector2(50,50), block_size)

func _ready():
	randomize()
	for x in rect2.size.x:
		for y in rect2.size.y:
			if rand_range(0,1) < 0.9:
				var building = house_scene.instance()
				building.set_position(rect2.position + Vector2(x* x_step, y * y_step))
				add_child(building)



func _input(event):
	if event.is_action_pressed("ui_accept"):
		get_tree().reload_current_scene()

func get_block_size()-> Rect2:
	return rect2
