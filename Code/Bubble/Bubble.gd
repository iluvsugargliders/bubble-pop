extends Node2D
class_name Bubble

var spd: int = 100

func _process(delta: float) -> void:
	position.y -= spd * delta
