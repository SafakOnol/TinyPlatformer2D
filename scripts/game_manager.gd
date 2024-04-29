extends Node

var total_score = 0
var coin_score = 0
var time_score = 100

@onready var timer = $Timer

@onready var score_label = $"Score-Label"



func _process(delta):
	total_score = coin_score + time_score
	score_label.text = "Your Score is: " + str(total_score) + ""

func add_point():
	coin_score += 3
	

func _on_timer_timeout():
	time_score += -1
