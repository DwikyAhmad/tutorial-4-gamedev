extends Area2D

@export var scene_name: String = "Level1"


func _on_body_entered(body: Node2D):
	if body.get_name() == "Player":
		get_tree().change_scene_to_file(str("res://scenes/" + scene_name + ".tscn"))
