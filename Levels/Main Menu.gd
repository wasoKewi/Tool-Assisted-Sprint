extends Node2D



func _on_quit_pressed():
	get_tree().quit()


func _on_level_1_pressed():
	get_tree().change_scene_to_file("res://Levels/level_1.tscn")


func _on_level_2_pressed():
	pass # Replace with function body.


func _on_level_3_pressed():
	pass # Replace with function body.
