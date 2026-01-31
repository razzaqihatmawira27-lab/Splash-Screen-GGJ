extends Control

@onready var logo: Sprite2D = $SplashBataraImg

func _ready():
	logo.modulate.a = 0.0
	fade_in_logo()

func fade_in_logo():
	var tween = create_tween()
	# Fade in over 1 second
	tween.tween_property(logo, "modulate:a", 1.0, 1.0)
	# Hold for 2 seconds
	tween.tween_interval(2.0)
	# Fade out over 1 second
	tween.tween_property(logo, "modulate:a", 0.0, 1.0)
	# After fade out, go to main menu
	tween.tween_callback(Callable(self, "_go_to_menu"))

func _go_to_menu():
	get_tree().change_scene_to_file("res://title_scenes/title_screen.tscn")
