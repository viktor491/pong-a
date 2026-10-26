extends Area2D

var speed = 200
var ball

func _ready():
	ball = get_parent().get_node("Ball")

func _process(delta):
	if ball.position.x < position.x:
		position.x -= speed * delta
	elif ball.position.x > position.x:
		position.x += speed * delta
	
	position.x = clamp(position.x, 0, 1152)

	
