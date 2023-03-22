extends KinematicBody2D
 
#seaded
const SPEED = 200
const SPEED2 = 150
const ACCEL = 50
const UP = Vector2(0,-1)


var motion = Vector2()
export (PackedScene) var Bullet

func _physics_process(_delta):
 run()
 motion = move_and_slide(motion, UP)
 
#funktsioonid
func run():
	
 if Input.is_action_pressed("Shoot"):
	 shoot()
 
 if Input.is_action_pressed("ui_down") and Input.is_action_pressed("ui_left"):
	 motion.y += ACCEL
	 motion.y = min(SPEED2, motion.y)
	 motion.x -= ACCEL
	 motion.x = max(-SPEED2, motion.x)
	 $AnimatedSprite.flip_h = false
	 $AnimatedSprite.play("left")
 elif Input.is_action_pressed("ui_down") and Input.is_action_pressed("ui_right"):
	 motion.y += ACCEL
	 motion.y = min(SPEED2, motion.y)
	 motion.x += ACCEL
	 motion.x = min(SPEED2, motion.x)
	 $AnimatedSprite.flip_h = false
	 $AnimatedSprite.play("right")
 elif Input.is_action_pressed("ui_up") and Input.is_action_pressed("ui_left"):
	 motion.y -= ACCEL
	 motion.y = max(-SPEED2, motion.y)
	 motion.x -= ACCEL
	 motion.x = max(-SPEED2, motion.x)
	 $AnimatedSprite.flip_h = false
	 $AnimatedSprite.play("left")
 elif Input.is_action_pressed("ui_up") and Input.is_action_pressed("ui_right"):
	 motion.y -= ACCEL
	 motion.y = max(-SPEED2, motion.y)
	 motion.x += ACCEL
	 motion.x = min(SPEED2, motion.x)
	 $AnimatedSprite.flip_h = false
	 $AnimatedSprite.play("right")
 elif Input.is_action_pressed("ui_right"):
	 motion.y = lerp(motion.y, 0, 0.2)
	 motion.x += ACCEL
	 motion.x = min(SPEED, motion.x)
	 $AnimatedSprite.flip_h = false
	 $AnimatedSprite.play("right")
 elif Input.is_action_pressed("ui_left"):
	 motion.y = lerp(motion.y, 0, 0.2)
	 motion.x -= ACCEL
	 motion.x = max(-SPEED, motion.x)
	 $AnimatedSprite.flip_h = false
	 $AnimatedSprite.play("left")
 elif Input.is_action_pressed("ui_up"):
	 motion.x = lerp(motion.x, 0, 0.2)
	 motion.y -= ACCEL
	 motion.y = max(-SPEED, motion.y)
	 $AnimatedSprite.flip_h = true
	 $AnimatedSprite.play("up")
 elif Input.is_action_pressed("ui_down"):
	 motion.x = lerp(motion.x, 0, 0.2) 
	 motion.y += ACCEL
	 motion.y = min(SPEED, motion.y)
	 $AnimatedSprite.flip_h = true
	 $AnimatedSprite.play("down")
 else:
	 motion.x = lerp(motion.x, 0, 0.2)
	 motion.y = lerp(motion.y, 0, 0.2)
	 $AnimatedSprite.play("idle")
func shoot():
	var b = Bullet.instance()
	add_child(b)
	b.transform = $Muzzle.transform
