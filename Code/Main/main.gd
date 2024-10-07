extends Node

const BUBBLE_S = preload("res://Bubble/Bubble.s.tscn")

func SpawnBubble():
	print("Spawning bubble.")

func SpawnBubblr():
	var bubble_instance = BUBBLE_S.instantiate()
	bubble_instance.position = Vector2(800, 300)
	add_child(bubble_instance)
	
func _ready() -> void:
	SpawnBubble()

func _process(delta: float) -> void:
	pass
