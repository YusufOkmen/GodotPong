extends Node

var PlayerScore = 0;
var OpponentScore = 0;

func _on_left_body_entered(body):
	$ball.position = Vector2(575, 300);
	OpponentScore += 1;
	score_achieved();
	


func _on_right_body_entered(body):
	$ball.position = Vector2(640,360);
	PlayerScore += 1;
	score_achieved();

func _process(delta):
	get_node("PlayerScore").text = str(PlayerScore);
	get_node("OpponentScore").text = str(OpponentScore);
	get_node("CountdownLabel").text = str(int($CountdownTimer.time_left) + 1);

func _on_countdown_timer_timeout() -> void:
	get_tree().call_group("RestartBallGroup", "restart_ball");
	$CountdownLabel.visible = false;



func score_achieved():
	get_tree().call_group("BallGroup", "stop_ball");
	$CountdownTimer.start();
	$CountdownLabel.visible = true;
	$ScoreSound.play();
		# Resetting player and opponent position.
	$Player.position.x = 100;
	$Player.position.y = 300;
	$Opponent.position.x = 1073;
	$Opponent.position.y = 300;
