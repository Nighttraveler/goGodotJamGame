extends KinematicBody2D


export var  speed = 800 #fast as fuck boi

func _physics_process(_delta):
	var x_input = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	var y_input = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	move_and_slide(Vector2(x_input,y_input)*speed)

