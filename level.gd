extends Node

var PlayerScore = 0;
var OpponentScore = 0;

func _on_left_body_entered(body):
	$ball.position = Vector2(640, 360);
	OpponentScore += 1;


func _on_right_body_entered(body):
	$ball.position = Vector2(640,360);
	PlayerScore += 1;

func _process(delta):
	get_node("PlayerScore").text = str(PlayerScore);
	get_node("OpponentScore").text = str(OpponentScore);
