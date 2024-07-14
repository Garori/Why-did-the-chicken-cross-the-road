extends CharacterBody2D
class_name Galinha

var initial_position
@onready var size = $'CollisionShape2D'.shape.radius/2
@onready var sprite = $'Chicken-Poster'
@onready var root = get_parent()
# Get the gravity from the project settings to be synced with RigidBody nodes.


func _ready():
	initial_position =  position

func _physics_process(delta):
	var rng = RandomNumberGenerator.new().randf_range(-10,10)
	$"cocó".pitch_scale += 0.005 * rng
	var ScreenSize = get_viewport_rect().size
	
	var SPEED = 300
	
	var direction = Input.get_vector("ui_left", "ui_right","ui_up","ui_down")
	if direction :
		sprite.play()
	else:
		sprite.stop()
	
	#if position.x+size > get_viewport_rect().size.x:
		#position.x = get_viewport_rect().size.x -size
	#if position.x -size < 0:
		#position.x = 0+size
	velocity = direction.normalized() * SPEED
	translate(direction.normalized())
	sprite.rotation = direction.angle()
	
	position.x = clamp(position.x,size+15,ScreenSize.x-size-15)
	position.y = clamp(position.y,size+15,ScreenSize.y-size-15)

	#if Input.is_action_just_pressed("ui_text_backspace"):
		#root.fuscaSpeed *= 2
	
	move_and_slide()


#func _on_area_2d_body_entered(body):
	#position = initial_position
