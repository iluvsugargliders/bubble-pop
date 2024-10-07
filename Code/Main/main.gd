extends Node
class_name Main

const BUBBLE = preload("res://Bubble/Bubble.tscn")

func SpawnBubble():
	var bubble_instance = BUBBLE.instantiate()
	bubble_instance.position = Vector2(500, 600)
	
	
	add_child(bubble_instance)
	
	
	
	
	
	
	

func _ready() -> void:
	SpawnBubble()
