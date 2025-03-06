extends Area2D

@export var teleport_x: float = 0.0
@export var teleport_y: float = 0.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    # Set up collision detection
    monitoring = true
    monitorable = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
    pass


func _on_body_entered(body: Node2D) -> void:
    if body.get_name() == "Player":
        body.global_position = Vector2(teleport_x, teleport_y)
