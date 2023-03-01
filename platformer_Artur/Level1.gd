extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var e = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
  


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$elud.text = "Elud: "+str(e)
	var kor = get_node ("player")
	$game_over.visible = false
	#if kor.position.y > 400:
	#	kor.position.y = 0
		#kor.position.x = 0
		#e -= 1
		#if e < 1:
		#	$game_over.visible = true
		#	get_tree().paused = true
