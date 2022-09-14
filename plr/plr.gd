extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var velocity = Vector2.ZERO
var speed = 0.1
var rotation_speed = 2.0
var max_speed = 5000000
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(_delta):
	position =  position + velocity
	velocity = velocity.normalized() *  clamp(velocity.length(), 0, max_speed)
	$exhoost.hide()
	if Input.is_action_pressed("forward"):
		velocity = velocity + Vector2(0,-speed).rotated(rotation) 
		$exhoost.show()
	
	if Input.is_action_pressed("left"):
		 rotation_degrees = rotation_degrees - rotation_speed
	
	if Input.is_action_pressed("right"):
		rotation_degrees = rotation_degrees + rotation_speed
	
	position.x = wrapf(position.x, 0, 1024)
	position.y = wrapf(position.y, 0, 600) 
	
	 
