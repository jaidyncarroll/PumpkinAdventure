extends Area2D

var og_pos
var dir = 1
var steps = 180
var speed = 2
@onready var sprite: Sprite2D = get_node("EnemyDog")
# Called when the node enters the scene tree for the first time.
func _ready():
	og_pos = position.x


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x += dir * speed
	if position.x > og_pos + steps:
		dir = -1
		sprite.flip_h = false
	elif position.x < og_pos - steps:
		dir = 1
		sprite.flip_h = true
		
		
func _on_body_entered(body):
	if body.has_method("delete_life"):
		body.delete_life()
		
		
		



