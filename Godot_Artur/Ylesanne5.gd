extends Node
#Artur-Mihk Peterso
#25.01.2023
#yl5

var rng = RandomNumberGenerator.new()
func _ready():
	print("----------------Ylesanne5.1")
	
	rng.randomize()
	var tunnid = rng.randi_range(20, 60)
	rng.randomize()
	var tunnitasu = rng.randi_range(4, 25)
	makstavtasu(tunnid,tunnitasu)
	print("----------------Ylesanne5.2")
	var tulemused = [7,28,64,51,81,40,21,73,34,98,39,17,33,85,35,44]
	keskmine(tulemused)
	koikpunktid(tulemused)
	hinne(tulemused)
	
func makstavtasu(tunnid,tunnitasu):
	if tunnid <= 40:
		var tasu = tunnid*tunnitasu
		print("Palk on :",round(tasu),"€")
	else:
		var tasu = 40*tunnitasu+(tunnid-40)*1.5*tunnid
		print("Palk on :",round(tasu),"€")
func keskmine(tulemused):
	var kesk = 0
	for x in tulemused:
		kesk += x
	var keskmine = kesk/(tulemused.size())
	print("Eksamipunktide keskmine tulemus on:", keskmine)
func koikpunktid(tulemused):
	for i in (tulemused):
		print(i)
func hinne(tulemused):
	for i in (tulemused):
		if i >=90:
			print(i,"p - 5")
		elif i >=75:
			print(i,"p - 4")
		elif i >=50:
			print(i, "p - 3")
		else:
			print(i, "p - 2")
