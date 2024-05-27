extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_entered(area):
	$Beep.play();
	$ScannerLight.energy = 4
	


func _on_area_exited(area):
	$ScannerLight.energy = 0;
