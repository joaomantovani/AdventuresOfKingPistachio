///Initialize variables
var velocity = 7;
var floorobj;

hspeed = 0;
if keyboard_check_direct(vk_right) {
    steps = (steps + 1) mod 10;
    if (steps mod 20 == 0) image_angle =  18;
    if (steps mod 20 == 5) image_angle = -18;
    hspeed = velocity;
    image_xscale = 1; //flip to right
} else if keyboard_check_direct(vk_left) {
    steps = (steps + 1) mod 10;
    if (steps mod 20 == 0) image_angle =  18;
    if (steps mod 20 == 5) image_angle = -18;
    hspeed = -velocity;
    image_xscale = -1; //flip to left
}

floorobj = instance_place(x, y+1, OBJ_Floor);
if (instance_exists(floorobj))
{
  airjump = true;
  x += floorobj.hspeed;
  y += floorobj.vspeed;
  gravity = 0;
  vspeed = 0;
  if (keyboard_check_pressed(vk_up))
  {
      vspeed = -10;
      audio_play_sound(SND_Jump, 1, false);
  }
} else {
  gravity = 0.5;
  image_angle = -vspeed * 4;
  
  floorobj = instance_place(x, y + vspeed, OBJ_Floor);
  while (vspeed != 0 && instance_exists(floorobj))
  {
      vspeed = floor(vspeed - sign(vspeed));
      floorobj = instance_place(x, y + vspeed, OBJ_Floor);
  }
  
  if (airjump && vspeed > -5 && keyboard_check_pressed(vk_up))
  {
      airjump = false;
      vspeed = -8;
      audio_play_sound(SND_Jump, 1, false);
  }
}

if(OBJ_King.y > 530)
    Player_TakeHit();
