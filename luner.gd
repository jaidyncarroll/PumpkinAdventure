extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
	
func _on_body_entered(body):
	if body.has_method("add_life"):
		Global.luner_dialogue = true
		
func _on_body_exited(body):
	if body.has_method("add_life"):
		Global.luner_dialogue = false
