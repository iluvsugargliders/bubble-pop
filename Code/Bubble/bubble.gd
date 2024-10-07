extends Node2D
class_name Bubble

func _process(delta: float) -> void:
	position.y -= 100 * delta
