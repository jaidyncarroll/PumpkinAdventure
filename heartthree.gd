extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	visible = true
	
func heartsLeft():
	if Global.max_lives >= 3:
		visible = true
	else:
		visible = false
func _physics_process(delta):
	heartsLeft()

