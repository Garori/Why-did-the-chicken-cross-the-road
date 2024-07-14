extends Node2D

var paiDosFuscas
# Called when the node enters the scene tree for the first time.
func _ready():
	paiDosFuscas = $paiDosFuscas
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var fuscas = paiDosFuscas.get_children()
	for fusca in fuscas:
		fusca.rotation += 0.1
	print_debug(fuscas)
	pass
