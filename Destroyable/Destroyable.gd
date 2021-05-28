extends StaticBody2D

export var hp_max : float = 100
export var hp : float = hp_max

onready var sprite : Sprite = $Sprite
onready var anim_player : AnimationPlayer= $AnimationPlayer
onready var collision_shape : CollisionShape2D = $CollisionShape2D
onready var animated_sprite : AnimatedSprite = $AnimatedSprite


func _ready():
	animated_sprite.hide()


func recieve_damage(damage :float):
	
	anim_player.play("recieve_damage")
	hp -= damage
	if hp<=0:
		destroy()
	pass
	
func destroy():
	#sprite.set_scale(Vector2(0.5,0.5))
	animated_sprite.show()
	animated_sprite.play()
	collision_shape.set_disabled(true)
	#queue_free()
	pass

func _on_Destroyable_body_entered(body: Node):
	if body.is_in_group("Player"):
		# get player damage
		recieve_damage(10)
	pass # Replace with function body.



func _on_Destroyable_mouse_entered():
	recieve_damage(10)
	pass # Replace with function body.
