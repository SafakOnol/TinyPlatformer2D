class_name MainMenu
extends Control

@onready var play_button = $MarginContainer/HBoxContainer/VBoxContainer/Play_Button as Button
@onready var quit_button = $MarginContainer/HBoxContainer/VBoxContainer/Quit_Button as Button
@onready var start_level = preload("res://scenes/game.tscn") as PackedScene

func _ready():
	play_button.button_up.connect(on_play_released)
	quit_button.button_up.connect(on_quit_released)
	
	
func on_play_released()->void:
	get_tree().change_scene_to_packed(start_level)
	
func on_quit_released()->void:
	get_tree().quit()

