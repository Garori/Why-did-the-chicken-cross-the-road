extends Node2D

var fusca = preload("res://Prefabs/fusca.tscn")
var fuscaSpeed
# Called when the node enters the scene tree for the first time.
func _ready():
	fuscaSpeed = 300
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass
	#if Input.is_action_just_pressed( "ui_accept"):
		#print_debug("APERTEI o")
		#var fusca1 = fusca.instantiate()
		#add_child(fusca1)
		#var numero = RandomNumberGenerator
		#fusca1.position = Vector2(0,numero.new().randi_range(0, 720))
		
	#var cadeira = $Galinha
	#print_debug(cadeira.position)


func _on_audio_stream_player_finished():
	$AudioStreamPlayer.seek(0.0)
	$AudioStreamPlayer.play()
	pass # Replace with function body.
