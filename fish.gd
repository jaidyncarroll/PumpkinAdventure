extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _on_body_entered(body):
	if Global.max_lives <3:
		if body.has_method("add_life"):
			queue_free()
			body.add_life()
	else:
		pass
