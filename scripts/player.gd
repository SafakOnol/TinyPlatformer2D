extends CharacterBody2D


const SPEED = 130.0
const JUMP_VELOCITY = -300.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

@onready var coyote_timer = $CoyoteTimer

@onready var animated_sprite_2d = $AnimatedSprite2D

@onready var sprite_flip_timer = $Timer

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and (is_on_floor() or !coyote_timer.is_stopped()):
		velocity.y = JUMP_VELOCITY
	var direction = Input.get_axis("move_left", "move_right")
	
	if Input.is_action_just_pressed("quit_game"):
		get_tree().quit()
	# flip sprite direction
	if (direction > 0):
		animated_sprite_2d.flip_h = false
	elif (direction < 0):
		animated_sprite_2d.flip_h = true
		
	# play animations
	if is_on_floor():
		if direction == 0:
			animated_sprite_2d.play("idle")
		else:
			animated_sprite_2d.play("run")
	else:
		animated_sprite_2d.play("jump")
		
		
	# movement
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	var was_on_floor = is_on_floor()

	move_and_slide()
	
	if (was_on_floor && !is_on_floor()):
		coyote_timer.start()
