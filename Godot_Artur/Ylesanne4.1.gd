extends Node
#Artur-Mihk Peterso
#25.01.2023
#yl4.1


func _ready():
	print("----------------Ylesanne4.1")
	var players = ["Feake","Bradwell","Dreger","Bloggett","Lambole","Daish","Lippiett","Blackie","Stollenbeck","Houseago","Dugall","Sprowson","Kitley","Mcenamin","Allchin","Doghartie","Brierly","Pirrone","Fairnie","Seal","Scoffins","Galer","Matevosian","DeBlase","Cubbin","Izzett","Ebi","Clohisey","Prater","Probart","Samwaye","Concannon","MacLure","Eliet","Kundt","Reyes"]
	var size = players.size()
	print(size)
	print(players[0])
	var biggest = players.max()
	players.erase("Reyes")
	players.append("Artur")
	players.sort()
	print(players)
	print(biggest)
