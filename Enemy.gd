extends AnimatedSprite2D

const SPEED = 60
var direction = 1

@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var enemy = $"."

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	position.x += direction * SPEED * delta
	
	if ray_cast_left.is_colliding():
		direction = 1
		enemy.flip_h=false
		
	if ray_cast_right.is_colliding():
		direction= -1
		enemy.flip_h=true
		
