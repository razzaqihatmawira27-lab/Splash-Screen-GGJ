extends Sprite2D

func _ready():
	move_right_left()

func move_right_left():
	var tween = create_tween()
	tween.set_loops()  # loop forever

	# Move up
	tween.tween_property(self, "position:y", 20, 0.9).as_relative()
	# Move down
	tween.tween_property(self, "position:y", -20, 0.9).as_relative()
	# Back to center
	tween.tween_property(self, "position:y", 0, 0).as_relative()
