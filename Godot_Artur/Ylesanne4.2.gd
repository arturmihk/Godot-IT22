extends Node
#Artur-Mihk Peterso
#25.01.2023
#yl4.2

var rng = RandomNumberGenerator.new()
func _ready():
	print("----------------Ylesanne4.2")
	var player = {"name":"Robert", "posx":12,"posy":4,"Health":150,"items":["sword","shield"], "gold":100}
	print(player.gold)
	for _i in range(5):
		rng.randomize()
		var randgold = rng.randi_range(10, 25)
		player.gold+=randgold
	print(player.gold)
