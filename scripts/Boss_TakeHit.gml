/// Boss_TakeHit(enemy)
var enemy = argument0;
if (enemy.damaged > 0) return 0;

enemy.life -= 1;
enemy.damaged = 32;
audio_play_sound(SND_Hit_Hurt, 1, false);

if (enemy.life <= 0) {
  instance_create(enemy.x, enemy.y, OBJ_BossDead);
  with (enemy) instance_destroy();
}
