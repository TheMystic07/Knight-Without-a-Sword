extends Node

var point =0
@onready var label = $Label10

func add_point():
	point+=1
	label.text = "CONGRESS!! You Collected "+ str(point)+" Coins"
	print(point)
