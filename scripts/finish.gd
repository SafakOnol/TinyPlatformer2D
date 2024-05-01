extends Area2D

@onready var player = %Player
@onready var game_manager = %GameManager

@onready var replay_button = $MarginContainer/HBoxContainer/VBoxContainer/Replay_Button

func _on_body_entered(body):
	game_manager.end_menu.set_score(game_manager.total_score)
	#game_manager.end_menu.set_high_score(game_manager.total_score)
	game_manager.end_menu.visible = true
