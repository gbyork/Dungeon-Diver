extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass



func _on_dungeon_body_exited(body):
	if body.is_in_group("player"):
		# Stop player movement when they exit the wall
		body.set_linear_velocity(Vector2(0, 0))
		

