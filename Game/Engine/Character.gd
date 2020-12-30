extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	var movement = Vector2(0,0)
	
	if Input.is_action_pressed("left"):
		movement.x = -1
		
	if Input.is_action_pressed("right"):
		movement.x = 1
		
	if Input.is_action_pressed("up"):
		movement.y = -1
		
	if Input.is_action_pressed("down"):
		movement.y = 1
		
	move_and_slide(movement * 100)
