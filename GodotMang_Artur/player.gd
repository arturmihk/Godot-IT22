extends KinematicBody2D
 
#seaded
const SPEED = 200
const SPEED2 = 150
const ACCEL = 50
const UP = Vector2(0,-1)


var motion = Vector2()
var bullet_speed = 700
var bullet = preload("res://Bullet.tscn")
var rotations = 0
var rotationss = 0
func _physics_process(_delta):
 run()
 motion = move_and_slide(motion, UP)
 
#funktsioonid
func run():
	
#if Input.is_action_pressed("Shoot"):
 
 if Input.is_action_pressed("ui_down") and Input.is_action_pressed("ui_left"):
	 motion.y += ACCEL
	 motion.y = min(SPEED2, motion.y)
	 motion.x -= ACCEL
	 motion.x = max(-SPEED2, motion.x)
	 $AnimatedSprite.flip_h = false
	 $AnimatedSprite.play("left")
	 rotations = 135
 elif Input.is_action_pressed("ui_down") and Input.is_action_pressed("ui_right"):
	 motion.y += ACCEL
	 motion.y = min(SPEED2, motion.y)
	 motion.x += ACCEL
	 motion.x = min(SPEED2, motion.x)
	 $AnimatedSprite.flip_h = false
	 $AnimatedSprite.play("right")
	 rotations = 45
 elif Input.is_action_pressed("ui_up") and Input.is_action_pressed("ui_left"):
	 motion.y -= ACCEL
	 motion.y = max(-SPEED2, motion.y)
	 motion.x -= ACCEL
	 motion.x = max(-SPEED2, motion.x)
	 $AnimatedSprite.flip_h = false
	 $AnimatedSprite.play("left")
	 rotations = 225
 elif Input.is_action_pressed("ui_up") and Input.is_action_pressed("ui_right"):
	 motion.y -= ACCEL
	 motion.y = max(-SPEED2, motion.y)
	 motion.x += ACCEL
	 motion.x = min(SPEED2, motion.x)
	 $AnimatedSprite.flip_h = false
	 $AnimatedSprite.play("right")
	 rotations = 315
 elif Input.is_action_pressed("ui_right"):
	 motion.y = lerp(motion.y, 0, 0.2)
	 motion.x += ACCEL
	 motion.x = min(SPEED, motion.x)
	 $AnimatedSprite.flip_h = false
	 $AnimatedSprite.play("right")
	 rotations = 0
 elif Input.is_action_pressed("ui_left"):
	 motion.y = lerp(motion.y, 0, 0.2)
	 motion.x -= ACCEL
	 motion.x = max(-SPEED, motion.x)
	 $AnimatedSprite.flip_h = false
	 $AnimatedSprite.play("left")
	 rotations = 180
 elif Input.is_action_pressed("ui_up"):
	 motion.x = lerp(motion.x, 0, 0.2)
	 motion.y -= ACCEL
	 motion.y = max(-SPEED, motion.y)
	 $AnimatedSprite.flip_h = true
	 $AnimatedSprite.play("up")
	 rotations = 270
	 rotationss = 300
 elif Input.is_action_pressed("ui_down"):
	 motion.x = lerp(motion.x, 0, 0.2) 
	 motion.y += ACCEL
	 motion.y = min(SPEED, motion.y)
	 $AnimatedSprite.flip_h = true
	 $AnimatedSprite.play("down")
	 rotations = 90
	 rotationss = 0
	 
 else:
	 motion.x = lerp(motion.x, 0, 0.2)
	 motion.y = lerp(motion.y, 0, 0.2)
	 $AnimatedSprite.play("idle")
	 rotations = 0
	 rotationss = 0
	if Input.is_action_just_pressed("Shoot"):
		shoot()
	

func shoot():
	var bullet_instance = bullet.instance()
	bullet_instance.position = get_global_position()
	bullet_instance.rotation_degrees = rotations
	bullet_instance.apply_impulse(Vector2(),Vector2(bullet_speed,0).rotated(rotationss))
	get_tree().get_root().call_deferred("add_child",bullet_instance)
	
	
