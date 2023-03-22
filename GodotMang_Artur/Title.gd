	extends Control
 
func _on_newGame_pressed():
	get_tree().change_scene("res://Level1.tscn")
 
func _on_seaded_pressed():
	get_tree().change_scene("res://Seaded.tscn")
 
func _on_exit_pressed():
	get_tree().quit()
