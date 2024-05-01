extends Node

var total_score = 0
var coin_collected = 0
var time_score = 100

@onready var timer = $Timer

@onready var score_label = $"Score-Label"

#@onready var end_level = preload("res://scenes/end_menu.tscn") as PackedScene

@onready var end_menu = $"../UIManager/End_Menu"


func _process(delta):
	total_score = (coin_collected * 3) + time_score
	#score_label.text = "Your Score is: " + str(total_score) + ""

func add_point():
	coin_collected += 1
	
func _on_timer_timeout():
	time_score += -1



	
