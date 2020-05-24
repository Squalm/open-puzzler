/// @desc movement
blocked = false;

global.block_type_in_question = oBlock0;
input_control = 0;

if (input_control == 0) {
if (keyboard_check_pressed(ord("W"))) {
	input_control = 5;
	// up
	
	if (place_meeting(x,y - global.grid_size, global.block_type_in_question)) {
//		blockPushUpPlayer(x,y, []);
//		for (var _i = 0; _i < array_length_1d(ids); _i++) {
//			ids[_i].push_up	= true;
//		}
		global.block_type_in_question.push_up = true;
		
	} else if (place_meeting(x,y + global.grid_size, global.block_type_in_question)) {
		global.block_type_in_question.push_up = true;
	} else if (place_meeting(x - global.grid_size,y, global.block_type_in_question)) {
		//if (instance_place(x - global.grid_size,y, global.block_type_in_question).sticky) {
			global.block_type_in_question.push_up = true;
		//}
	} else if (place_meeting(x + global.grid_size,y, global.block_type_in_question)) {
		//if (instance_place(x + global.grid_size,y, global.block_type_in_question).sticky) {
			global.block_type_in_question.push_up = true;
		//}
	}
	alarm[1] = 1;
	
} else if (keyboard_check_pressed(ord("S"))) {
	input_control = 5;
	// down
	
	if (place_meeting(x,y - global.grid_size, global.block_type_in_question)) {
		global.block_type_in_question.push_down = true;
	} else if (place_meeting(x,y + global.grid_size, global.block_type_in_question)) {
		global.block_type_in_question.push_down = true;
	} else if (place_meeting(x - global.grid_size,y, global.block_type_in_question)) {
		//if (instance_place(x - global.grid_size,y, global.block_type_in_question).sticky) {
			global.block_type_in_question.push_down = true;
		//}
	} else if (place_meeting(x + global.grid_size,y, global.block_type_in_question)) {
		//if (instance_place(x + global.grid_size,y, global.block_type_in_question).sticky) {
			global.block_type_in_question.push_down = true;
		//}
	}
	alarm[2] = 1;
	
	
} else if (keyboard_check_pressed(ord("A"))) {
	input_control = 5;
	// left
	
	if (place_meeting(x,y - global.grid_size, global.block_type_in_question)) {
		//if 
			global.block_type_in_question.push_left = true;
		//}
	} else if (place_meeting(x,y + global.grid_size, global.block_type_in_question)) {
		//if 
			global.block_type_in_question.push_left = true;
		//}
	} else if (place_meeting(x - global.grid_size,y, global.block_type_in_question)) {
		//if 
			global.block_type_in_question.push_left = true;
		//}
	} else if (place_meeting(x + global.grid_size,y, global.block_type_in_question)) {
		//if
			global.block_type_in_question.push_left = true;
		//}
	}
	alarm[3] = 1;
	
	
} else if (keyboard_check_pressed(ord("D"))) {	
	input_control = 5;
	// right
	
	if (place_meeting(x,y - global.grid_size, global.block_type_in_question)) {
		//if 
			global.block_type_in_question.push_right = true;
		//}
	} else if (place_meeting(x,y + global.grid_size, global.block_type_in_question)) {
		//if
			global.block_type_in_question.push_right = true;
		//}
	} else if (place_meeting(x - global.grid_size,y, global.block_type_in_question)) {
		//if
			global.block_type_in_question.push_right = true;
		//}
	} else if (place_meeting(x + global.grid_size,y, global.block_type_in_question)) {
		//if 
			global.block_type_in_question.push_right = true;
		//}
	}
	alarm[4] = 1;


}

} else {input_control -= 1}

x = grid_coords[0] *global.grid_size;
y = grid_coords[1] *global.grid_size;