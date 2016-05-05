///PLatform behaviour

if (instance_place(x, y-2, OBJ_King) && floating) { 
  floating = false;
  alarm[0] = 40;
} 
//the arrow keys<,>,^ if place_free(x-4,y)and keyboard_check(vk_left){x-=4} if place_free(x+4,y)and keyboard_check(vk_right){x+=4} if !place_free(x,y+1) and keyboard_check(vk_up){vspeed=-10}
