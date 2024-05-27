extends Node2D

var item = preload("res://item.tscn")
var background = preload("res://scanner.tscn")

var numberOfItems = randi_range(5, 10)


var back = load("res://assets/box-back.png");


# Called when the node enters the scene tree for the first time.
func _ready():
	var backgroundInstance = background.instantiate();
	add_child(backgroundInstance);
	
	for n in numberOfItems:
		var randomX = randi_range(-350, -675);
		var randomY =  randi_range(-100, 400);
		
		var item_position = Vector2(randomX,randomY);
		spawnitems(item_position);



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func spawnitems(item_position):
	var itemInstance = item.instantiate();
	add_child(itemInstance);
	itemInstance.position = item_position;

