extends Node
class_name Main

const BUBBLE = preload("res://Bubble/Bubble.tscn")

func spawnBubble():
	var bubble_instance = BUBBLE.instantiate()
	bubble_instance.position = Vector2(randi_range(0, get_viewport().size.x), get_viewport().size.y + 100)
	add_child(bubble_instance)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	randomize()
	spawnBubble()
