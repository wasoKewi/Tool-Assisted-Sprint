extends Control

var xdir1 = 0
var xdir2 = 0

var jump1 = false
var jump2 = false

func _on_right_p_1_button_up():
	xdir1 = 0

func _on_left_p_1_button_up():
	xdir1 = 0

func _on_jump_p_1_button_up():
	jump1 = false


func _on_left_p_1_button_down():
	xdir1 = -1

func _on_right_p_1_button_down():
	xdir1 = 1

func _on_jump_p_1_button_down():
	jump1 = true


func _on_left_p_2_button_up():
	xdir2 = 0

func _on_right_p_2_button_up():
	xdir2 = 0
	
func _on_jump_p_2_button_up():
	jump2 = false


func _on_left_p_2_button_down():
	xdir2 = -1

func _on_right_p_2_button_down():
	xdir2 = 1

func _on_jump_p_2_button_down():
	jump2 = true


func _on_menu_pressed():
	get_tree().change_scene_to_file("res://Levels/Main Menu.tscn")
