///Player_Attack

if keyboard_check_pressed(vk_space) {
    sprite_index = King_ATTACK;
    audio_play_sound(SND_Attack, 1, false);
    var cut = instance_create(x + 8 * image_xscale, y - 20, OBJ_SwordCut);
    cut.image_xscale = image_xscale;
    cut.hspeed = hspeed;
}
