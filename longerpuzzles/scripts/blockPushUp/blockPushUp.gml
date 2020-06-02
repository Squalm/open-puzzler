/// @param x grid
/// @param y grid
/// @param ids

var _x = argument0, _y = argument1, _ids = argument2;
// Is this even a good idea? It probably makes it more efficient, might break stuff late game IDK.
//var _ids = global.ids_up
//show_debug_message("blockpushup");
//show_debug_message(_x);
//show_debug_message(_y);

var _t = 0;
for (var _i = 0; _i < instance_number(oBlock); _i++) {
	if (instance_find(oBlock, _i).x == _x*global.grid_size && instance_find(oBlock, _i).y == _y*global.grid_size) {
		_t = instance_find(oBlock, _i);
	}
}

show_debug_message(_t);
show_debug_message(_ids)

var _b = true;
for (var _i = 0; _i < array_length_1d(_ids); _i++) { 
	if (_ids[_i] == _t) { 
		_b = false; 
		show_debug_message("_b is false.")
	} 
}

//if (_t.immovable) {_b = false;}

if (_b) {
	
	  _ids[array_length_1d(_ids) +1] = _t;

	var _is_up = false, _is_down = false, _is_left = false, _is_right = false;

	for (var _i = 0; _i <  instance_number(oBlock); _i++) {
	
		if (instance_find(oBlock, _i).x == _x*global.grid_size && instance_find(oBlock, _i).y == (_y +1)*global.grid_size) {
			if (_t.sticky || instance_find(oBlock, _i).sticky) {
				_is_down = true;
				var _down_id = instance_find(oBlock, _i);
//				show_debug_message("Found a block down");
			}
		}
	
		if (instance_find(oBlock, _i).x == _x*global.grid_size && instance_find(oBlock, _i).y == (_y -1)*global.grid_size) {
		 //	if (_t.sticky || instance_find(oBlock, _i).sticky) {
				_is_up = true;
				var _up_id = instance_find(oBlock, _i);
//				show_debug_message("Found a block up")
		//	}
		}
	
		if (instance_find(oBlock, _i).x == (_x +1)*global.grid_size && instance_find(oBlock, _i).y == _y*global.grid_size) {
			if (_t.sticky || instance_find(oBlock, _i).sticky) {
				_is_right = true;
				var _right_id = instance_find(oBlock, _i);
//				show_debug_message("Found a block right");
			}
		}
	
		if (instance_find(oBlock, _i).x == (_x -1)*global.grid_size && instance_find(oBlock, _i).y == _y*global.grid_size) {
			if (_t.sticky || instance_find(oBlock, _i).sticky) {
				_is_left = true;
				var _left_id = instance_find(oBlock, _i);
//				show_debug_message("Found a block left");
			}
		}
	
	}

	//down 

	if (_is_down) {
		show_debug_message("Found block below");
		
		var _b2 = true;
		for (var _i = 0; _i < array_length_1d(_ids); _i++) {
			if (_ids[_i] == _down_id) {_b2 = false;}
		}
		
		if (_b2) {
			var _block_push_results = blockPushUp(_x, _y + 1, _ids);
		
			for (var _i = 0; _i < array_length_1d(_block_push_results); _i++) {
				_ids[array_length_1d(_ids)+1] = _block_push_results[_i]; 
			}
		} else {show_debug_message(" -- Already checked.")}
	}

	// up 

	if (_is_up) {
		show_debug_message("Found block above");
		
		var _b2 = true;
		for (var _i = 0; _i < array_length_1d(_ids); _i++) {
			if (_ids[_i] == _up_id) {_b2 = false;}
		}
		
		if (_b2) {
			var _block_push_results = blockPushUp(_x, _y - 1, _ids);
		
			for (var _i = 0; _i < array_length_1d(_block_push_results); _i++) {
				_ids[array_length_1d(_ids)+1] = _block_push_results[_i]; 
			}
		} else {show_debug_message(" -- Already checked.")}
	}

	// left

	if (_is_left) {
		show_debug_message("Found block left");
	
		var _b2 = true;
		for (var _i = 0; _i < array_length_1d(_ids); _i++) {
			if (_ids[_i] == _left_id) {_b2 = false;}
		}
		
		if (_b2) {
			var _block_push_results = blockPushUp(_x - 1, _y, _ids);
		
			for (var _i = 0; _i < array_length_1d(_block_push_results); _i++) {
				_ids[array_length_1d(_ids)+1] = _block_push_results[_i]; 
			}
		} else {show_debug_message(" -- Already checked.")}
	}

	// right

	if (_is_right) {
		show_debug_message("Found block right");
		
		var _b2 = true;
		for (var _i = 0; _i < array_length_1d(_ids); _i++) {
			if (_ids[_i] == _right_id) {_b2 = false;}
		}
		
		if (_b2) {
			var _block_push_results = blockPushUp(_x + 1, _y, _ids);
		
			for (var _i = 0; _i < array_length_1d(_block_push_results); _i++) {
				_ids[array_length_1d(_ids)+1] = _block_push_results[_i]; 
			}
		} else {show_debug_message(" -- Already checked.")}
	}



//show_debug_message("Failed");
/*
for (var _i = 0; _i < array_length_1d(_ids); _i++) {
	global.ids_up[array_length_1d(global.ids_up)+1] = _ids[_i];
}*/

return _ids;

}

else {show_debug_message("Triggered -- Already Checked."); return [];}