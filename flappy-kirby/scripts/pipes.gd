extends Area2D

signal pipehit

signal pipescore

func _on_body_entered(body: Node2D):
	pipehit.emit()
