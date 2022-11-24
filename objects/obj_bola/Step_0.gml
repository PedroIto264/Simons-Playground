if (shoot){
	gravity = grav;
}

if (keyboard_check(vk_up)){
	angle++;
}

if (keyboard_check(vk_down)){
	angle--;
}

if(!shoot){
	if(keyboard_check(vk_space)){
		direction = angle;
		speed = speedb;
		shoot = true;
	}
}