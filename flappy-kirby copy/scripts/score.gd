extends Area2D

signal score

func _on_body_exited(body: Node2D) -> void:
	score.emit()
