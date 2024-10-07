extends Node
class_name Main

#preloads the Bubble scene into Main script
const BUBBLE = preload("res://Bubble/Bubble.tscn")

#what it says on the tin
func SpawnBubble():
	var bubble_instance = BUBBLE.instantiate()
	bubble_instance.position = Vector2(400, 200) 
	add_child(bubble_instance)





#calls the SpawnBubble function
func _ready() -> void:
	SpawnBubble()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
