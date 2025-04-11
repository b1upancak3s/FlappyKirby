extends Area2D

signal shrinkhit

signal visibility

func _on_visibility():
	self.visible = false
	print("poof!")

func _on_body_entered(body: Node2D):
	shrinkhit.emit()
	print("VERY VERY TINY")
