/// @desc movement
blocked = false;

input_control = 0;

if (input_control == 0) {
	
	if (keyboard_check_pressed(ord("W"))) {
		
		show_debug_message("Up pressed.");
		var _ids_to_push = blockPushUp(grid_coords[0], grid_coords[1], []);
		//global.ids_up = [];
		for (var _i = 0; _i < array_length_1d(_ids_to_push); _i++) {
			_ids_to_push[_i].push_up = true;
		}
		
		grid_coords[1] -= 1;
		
	} else if (keyboard_check_pressed(ord("S"))) {
		
		grid_coords[1] += 1;
		
	} else if (keyboard_check_pressed(ord("A"))) {
		
		grid_coords[0] -= 1;
		
	} else if (keyboard_check_pressed(ord("D"))) {
		
		grid_coords[0] += 1;
		
	}
	
} else {input_control -= 1}

x = grid_coords[0] *global.grid_size;
y = grid_coords[1] *global.grid_size;