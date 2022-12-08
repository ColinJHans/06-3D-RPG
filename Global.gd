extends Node

var timer = 1
var score = 0
export var health = 3

func _ready():
	update_score(0)

func _unhandled_input(_event):
	if Input.is_action_pressed("menu"):
		get_tree().quit()

func update_score(s):
	score += s
	var a =get_node_or_null("/root/Game/UI/Score")
	if a != null:
		a.text = "Score: " + str(score)
func update_time():
	var t_m = floor(timer / 60.0)
	var t_s = timer % 60
	var t = "Time: %02d" % t_m
	t += ":%02d" % t_s
	get_node("/root/Game/UI/Time").text = t

func update_health(h):
	health -=h

func reset():
	timer = 1
	score = 0
	health = 3
	update_score(0)
