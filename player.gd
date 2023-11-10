extends RigidBody2D
var canMove = true
func _ready():
	add_to_group("player")

func _physics_process(delta):
	var movement = Vector2()
	if canMove:
		if Input.is_action_pressed("move_up"):
			movement.y -= 200
		elif Input.is_action_pressed("move_down"):
			movement.y += 200
	if canMove:
		if Input.is_action_pressed("move_left"):
			movement.x -= 200
		elif Input.is_action_pressed("move_right"):
			movement.x += 200
	
	set_linear_velocity(movement)

func _on_dungeon_body_exited(body):
	if body.is_in_group("player"):
		canMove = false
		set_linear_velocity(Vector2(0, 0))
		print("nice")
		await(get_tree().create_timer(1.0)).timeout
		canMove = true
	

