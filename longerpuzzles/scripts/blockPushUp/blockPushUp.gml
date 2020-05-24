/// @param x grid
/// @param y grid
/// @param ids

var _x = argument0, _y = argument1, _ids = argument2;
//show_debug_message("blockpushup");
//show_debug_message(_x);
//show_debug_message(_y);

var _t = 0;
for (var _i = 0; _i < instance_number(global.block_type_in_question); _i++) {
	if (instance_find(global.block_type_in_question, _i).x == _x*global.grid_size && instance_find(global.block_type_in_question, _i).y == _y*global.grid_size) {
		_t = instance_find(global.block_type_in_question, _i);
	}
}


var _b = true;
for (var _i = 0; _i < array_length_1d(_ids); _i++) { 
	if (_ids[_i] == _t) { _b = false; } 
}

if (_b && _t.immovable == false) {
	
	  _ids[array_length_1d(_ids) +1] = _t;

	var _is_up = false, _is_down = false, _is_left = false, _is_right = false;

	for (var _i = 0; _i <  instance_number(global.block_type_in_question); _i++) {
	
		if (instance_find(global.block_type_in_question, _i).x == _x*global.grid_size && instance_find(global.block_type_in_question, _i).y == (_y +1)*global.grid_size) {
			if (_t.sticky || instance_find(global.block_type_in_question, _i).sticky) {
				_is_down = true;
//				show_debug_message("Found a block down");
			}
		}
	
		if (instance_find(global.block_type_in_question, _i).x == _x*global.grid_size && instance_find(global.block_type_in_question, _i).y == (_y -1)*global.grid_size) {
		 //	if (_t.sticky || instance_find(global.block_type_in_question, _i).sticky) {
				_is_up = true;
//				show_debug_message("Found a block up");
		//	}
		}
	
		if (instance_find(global.block_type_in_question, _i).x == (_x +1)*global.grid_size && instance_find(global.block_type_in_question, _i).y == _y*global.grid_size) {
			if (_t.sticky || instance_find(global.block_type_in_question, _i).sticky) {
				_is_right = true;
//				show_debug_message("Found a block right");
			}
		}
	
		if (instance_find(global.block_type_in_question, _i).x == (_x -1)*global.grid_size && instance_find(global.block_type_in_question, _i).y == _y*global.grid_size) {
			if (_t.sticky || instance_find(global.block_type_in_question, _i).sticky) {
				_is_left = true;
//				show_debug_message("Found a block left");
			}
		}
	
	}

	//down 

	if (_is_down) {
		show_debug_message("Found block below");

		var _block_push_results = blockPushUp(_x, _y + 1, _ids);
		
		for (var _i = 0; _i < array_length_1d(_block_push_results); _i++) {
			_ids[array_length_1d(_ids)+1] = _block_push_results[_i]; 
		}
		
	}

	// up 

	if (_is_up) {
		show_debug_message("Found block above");
	
		var _block_push_results = blockPushUp(_x, _y - 1, _ids);
		
		for (var _i = 0; _i < array_length_1d(_block_push_results); _i++) {
			_ids[array_length_1d(_ids)+1] = _block_push_results[_i]; 
		}
	}

	// left

	if (_is_left) {
		show_debug_message("Found block left");
	
		var _block_push_results = blockPushUp(_x - 1, _y, _ids);
		
		for (var _i = 0; _i < array_length_1d(_block_push_results); _i++) {
			_ids[array_length_1d(_ids)+1] = _block_push_results[_i]; 
		}
	}

	// right

	if (_is_right) {
		show_debug_message("Found block right");
	
		var _block_push_results = blockPushUp(_x + 1, _y, _ids);
		
		for (var _i = 0; _i < array_length_1d(_block_push_results); _i++) {
			_ids[array_length_1d(_ids)+1] = _block_push_results[_i]; 
		}
	}

}

//show_debug_message("Failed");
return _ids;