class_name EndMenu
extends Control

@onready var score_label = $"GameManager/Score-Label"
@onready var high_score = $MarginContainer/HBoxContainer/VBoxContainer/HighScore

# end game variables
@onready var replay_button = $MarginContainer/HBoxContainer/VBoxContainer/Replay_Button as Button
@onready var quit_button = $MarginContainer/HBoxContainer/VBoxContainer/Quit_Button as Button
@onready var start_level = preload("res://scenes/game.tscn") as PackedScene
@onready var score = $MarginContainer/HBoxContainer/VBoxContainer/Score

func set_score(value):
	score.text = "SCORE: " + str(value)
	
#func set_high_score(value):
	#high_score.text = "HIGH SCORE: " + str(value)


func _ready():
	#score.text = "Your Score: " + str(final_score)

	replay_button.button_up.connect(on_replay_released)
	quit_button.button_up.connect(on_quit_released)
		
func on_replay_released()->void:
	get_tree().change_scene_to_packed(start_level)
	
func on_quit_released()->void:
	get_tree().quit()

