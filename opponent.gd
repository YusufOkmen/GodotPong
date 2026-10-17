#extends CharacterBody2D
#
#var speed = 250
#var ball
#
#func _ready():
	#ball = get_parent().get_parent().get_node("ball")
#
#func _physics_process(delta):
	#velocity = Vector2(0, get_opponent_direction()) * speed
	#move_and_slide();
#
#func get_opponent_direction():
	#if abs(ball.position.y - position.y) > 25:
		#if ball.position.y > position.y: return 1;
		#else: return -1;
	#else: return 0;
	#
	#

extends CharacterBody2D

var speed = 150
var ball

func _ready():
	ball = get_parent().get_node("ball")

func _physics_process(_delta):
	velocity = Vector2(0, get_opponent_direction()) * speed
	move_and_slide()

func get_opponent_direction():
	# Compare global_position and use a much smaller deadzone (25px)
	if abs(ball.global_position.y - global_position.y) > 25:
		if ball.global_position.y > global_position.y:
			return 1
		else:
			return -1
	else:
		return 0
