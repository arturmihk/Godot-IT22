extends KinematicBody2D

var direction : Vector2 = Vector2.LEFT # default direction
var speed : float = 200 # put your rocket speed
var velocity : Vector2 # the object's current velocity

func _physics_process(delta):
	# Calculate the new velocity based on the direction and speed
	velocity = direction.normalized() * speed

	# Move the object using move_and_slide
	velocity = move_and_slide(velocity, Vector2.UP)

	# Reset the direction to the default value
	direction = Vector2.LEFT
	
	var collision_info = move_and_collide(velocity.normalized() * delta * speed)
	if collision_info != null:
		queue_free()
