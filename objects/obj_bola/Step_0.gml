if (shoot){
	gravity = grav;
}

if (keyboard_check(vk_up) and angle < 89){
	angle += 0.5;
}

if (keyboard_check(vk_down) and angle > 0){
	angle -= 0.5;
}

if (keyboard_check(vk_left) and speedb > 0.2){
	speedb -= 0.1;
}

if (keyboard_check(vk_right) and speedb < 30){
	speedb += 0.1;
}

if(!shoot){
	if(keyboard_check(vk_space)){
		direction = angle;
		speed = speedb;
		shoot = true;
	}
}

