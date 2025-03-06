extends RigidBody2D

@export var sceneName: String = "Level1"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    # Set up collision detection
    contact_monitor = true
    max_contacts_reported = 1
    pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
    pass

# Called when this fish collides with another body
func _on_body_entered(body: Node) -> void:
    if body.get_name() == "Player":
        # Change to another scene when fish touches player
        get_tree().change_scene_to_file(str("res://scenes/" + sceneName + ".tscn"))
    else:
        # Delete the fish when it touches something that's not a player
        queue_free()
