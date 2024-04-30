extends CanvasLayer

@onready var game_manager = %GameManager
@onready var coin_display = $CoinDisplay
@onready var score_display = $ScoreDisplay


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	coin_display.text = str(game_manager.coin_collected)
	score_display.text = str(game_manager.total_score)




###################
#func _process(delta):
	#total_score = coin_score + time_score
	#score_label.text = "Your Score is: " + str(total_score) + ""
#
#func add_point():
	#coin_score += 3
	#
#
#func _on_timer_timeout():
	#time_score += -1
