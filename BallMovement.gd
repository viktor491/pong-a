extends Area2D

var velocity = Vector2(300, 200)

func _process(delta):
	position += velocity * delta
	
	# Bounce off left and right edges
	if position.x <= 0 or position.x >= 1152:
		velocity.x = -velocity.x

func _ready():
	area_entered.connect(_on_area_entered)

func _on_area_entered(area):
	velocity.y = -velocity.y
