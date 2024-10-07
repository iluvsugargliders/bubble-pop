extends Node2D
class_name bubble

func _process(delta: float) -> void:
	position.y -= 100 * delta
