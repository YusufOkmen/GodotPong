extends CharacterBody2D

var speed = 400;

func _physics_process(_delta):
	
	velocity = Vector2.ZERO;
	
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 400;
		
	if Input.is_action_pressed("ui_down"):
		velocity.y += 400;
	
	move_and_slide();
