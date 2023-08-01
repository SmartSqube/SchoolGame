extends Control

class_name Card

export var label:String = "" 
export var icon:String = "" 
 
signal pressed

func _ready():
	
	pass 


func _process(delta):
	$Label.text = label+ "%s" % get_index()





func _on_Button_pressed():
	emit_signal("pressed", label)
	pass # Replace with function body.
