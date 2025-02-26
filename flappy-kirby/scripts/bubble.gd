extends Area2D

signal bubblehit

func _on_body_entered(body: Node2D) -> void:
	bubblehit.emit()
