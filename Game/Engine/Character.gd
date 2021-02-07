extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var movement = Vector2(0,0) #x,y

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	movement.x = 0
	movement.y = 0 
	
	input()
	set_animation()
	movement = move_and_slide(movement * 200)
	
	
func input(): 
	if Input.is_action_pressed("left"):
		movement.x = -1
		
	if Input.is_action_pressed("right"):
		movement.x = 1
		
	if Input.is_action_pressed("up"):
		movement.y = -1
		
	if Input.is_action_pressed("down"):
		movement.y = 1


func set_animation():
	if movement.x < 0:
		$Sprite.flip_h = true
		$AnimationPlayer.play("move")
	
	if movement.x > 0:
		$Sprite.flip_h = false
		$AnimationPlayer.play("move")
	
	if movement.x == 0:
		$AnimationPlayer.play("idle")
