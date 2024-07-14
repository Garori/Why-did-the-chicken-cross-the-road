extends CharacterBody2D
class_name Fusca

var main_galinha : CharacterBody2D
func _ready():
	main_galinha = get_node("../Galinha")
	print_debug(get_meta("tipo"))
	if get_meta("tipo") > 0:
		#$fuscaSprite.set_flip_v(true)
		$fuscaSprite.set_flip_h(true)
	$fuscaSprite.play()
	

# Get the gravity from the project settings to be synced with RigidBody nodes.


func _physics_process(delta):
	var root = get_parent()
	var SPEED = root.fuscaSpeed
	if get_meta("tipo") > 0:
		SPEED = -root.fuscaSpeed
		if position[0] < 0:
			position[0] = get_viewport_rect().size.x
		
	velocity.x = SPEED
	if position[0] > get_viewport_rect().size.x:
		position[0] = 0
		
	if position[1] > get_viewport_rect().size.y or position[1] < 0:
		queue_free()
	move_and_slide()


func _on_area_2d_body_entered(body):

	main_galinha.position = main_galinha.initial_position
	main_galinha.get_node("cocó").play()
	pass # Replace with function body.
