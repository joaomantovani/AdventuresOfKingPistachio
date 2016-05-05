/// Enemy_TakeHit(enemy)
var enemy = argument0;
var obj   = instance_create(enemy.x, enemy.y, OBJ_EnemyDead);
obj.image_xscale = enemy.image_xscale;

audio_play_sound(SND_Hit_Hurt, 1, false);

with (enemy) instance_destroy();
