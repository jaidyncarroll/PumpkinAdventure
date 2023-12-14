extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.max_lives == 0:
		get_tree().change_scene_to_file("res://game_over.tscn")
	else:
		pass
	
	
func _on_body_entered(body):
	if body.has_method("add_life") and Global.scene == 1:
		get_tree().change_scene_to_file("res://village_scene.tscn")
		Global.scene = 2
	elif body.has_method("add_life") and Global.scene == 2:
		get_tree().change_scene_to_file("res://forest_scene.tscn")
		Global.scene = 3
	elif body.has_method("add_life") and Global.scene == 3:
		get_tree().change_scene_to_file("res://darkforest_scene.tscn")
		Global.scene = 4
	elif body.has_method("add_life") and Global.scene == 4:
		get_tree().change_scene_to_file("res://cave_scene.tscn")
		Global.scene = 5
	elif body.has_method("add_life") and Global.scene == 5:
		get_tree().change_scene_to_file("res://win_scene.tscn")
		Global.scene = 6
