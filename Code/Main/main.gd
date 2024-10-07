extends Node
class_name Main

const BUBBLE = preload("res://bubble/bubble.tscn")

func spawnbubble():
	var bubble_instance = BUBBLE.instantiate()
	bubble_instance.position = Vector2(400, 200)
	add_child(bubble_instance)







func _ready() -> void:
	spawnbubble()
