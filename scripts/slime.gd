extends Node2D

const SPEED = 60

var direction = 1

@onready var ray_cast_2d_right = $"RayCast2D-Right"
@onready var ray_cast_2d_left = $"RayCast2D-Left"
@onready var ray_cast_2d_right_down = $"RayCast2D-RightDown"
@onready var ray_cast_2d_left_down = $"RayCast2D-LeftDown"
@onready var animated_sprite_2d = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if ray_cast_2d_right.is_colliding():
		direction = -1
	if ray_cast_2d_left.is_colliding():
		direction = 1
	if !ray_cast_2d_right_down.is_colliding():
		direction = -1
	if !ray_cast_2d_left_down.is_colliding():
		direction = 1	
	
	if (direction == -1):
		animated_sprite_2d.flip_h = true
	elif (direction == 1):
		animated_sprite_2d.flip_h = false
	position.x += direction * SPEED * delta
