extends Timer

@onready var display = $Label
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var tempo:float
	tempo = get_time_left()
	display.text = str(tempo)
	pass
