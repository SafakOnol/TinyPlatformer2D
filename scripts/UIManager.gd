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

