extends Node
class_name Main

func SpawnBubble():
	print("Bubble Spawned")
	var bubble_instance = BUBBLE.instantiate()
	bubble_instance.position = Vector2(100, 100)
	add_child(bubble_instance)

const BUBBLE = preload("res://Bubble/bubble.tscn")


func _ready() -> void:
	SpawnBubble() 



func _process(delta: float) -> void:
	pass
