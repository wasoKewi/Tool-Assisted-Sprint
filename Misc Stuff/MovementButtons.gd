extends Control

var xdir1 = 0
var xdir2 = 0

var jump1 = false
var jump2 = false

var conf1 = false
var conf2 = false
var fullconf = false

var turndone = false

var framecount = 0
var framelength = 10

signal pausetoggle(value)

func _process(delta):
	framecount+=1
	
	
	if conf1 and conf2:
		fullconf = true
		emit_signal("pausetoggle",fullconf)
	
	if turndone:
		if framecount >= framelength:
			fullconf = false
			emit_signal("pausetoggle",fullconf)


func _on_left_p_1_button_down():
	xdir1 = -1

func _on_right_p_1_button_down():
	xdir1 = 1

func _on_jump_p_1_button_down():
	jump1 = true

func _on_confirm_p_1_button_down():
	conf1 = true


func _on_left_p_2_button_down():
	xdir2 = -1

func _on_right_p_2_button_down():
	xdir2 = 1

func _on_jump_p_2_button_down():
	jump2 = true

func _on_confirm_p_2_button_down():
	conf2 = true




func _on_menu_pressed():
	get_tree().change_scene_to_file("res://Levels/Main Menu.tscn")










