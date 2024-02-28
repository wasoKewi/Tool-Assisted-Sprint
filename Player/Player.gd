extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
	if get_node("../../../UI").fullconf:
		if not is_on_floor():
			velocity.y += gravity * delta

		# Handle jump.
		if get_node("../../../UI").jump1 and is_on_floor():
			velocity.y = JUMP_VELOCITY
			
		var direction = get_node("../../../UI").xdir1
		
		if direction:
			velocity.x = direction * SPEED
		else:
			velocity.x = move_toward(velocity.x, 0, SPEED)
		
		get_node("../../../UI").turndone = true
	
	
	move_and_slide()


