extends Line2D
class_name Trails

var queue : Array
var MAX_LEGTH = 100

func _process(_delta):
	var pos = _get_position()
	
	queue.push_front(pos)
	if queue.size() > MAX_LEGTH:
		queue.pop_back()
			
	clear_points()
	
	for point in queue:
		add_point(point)

func _get_position():
	return get_global_mouse_position()
