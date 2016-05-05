/// Player_Death()
with (Level_controller) instance_destroy();
if (lives <= 0) {
  room_goto(rm_GameOver);
} else {
  lives -= 1;
  room_restart();
}
