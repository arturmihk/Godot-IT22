#Artur-Mihk Peterso
#18.01.2023
#yl1
extends Node

var rng = RandomNumberGenerator.new()
func _ready():
	print("---------------Ylesanne 1")
	var playername = "Keskmine_Peeter"
	var pts = 115
	print(len(playername))
	print(pts+2)
	rng.randomize()
	var k = rng.randi_range(1, 19)
	print(k)
	

