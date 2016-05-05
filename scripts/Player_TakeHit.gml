/// Player_TakeHit()
var king = instance_find(OBJ_King, 0);
if (king.immortal) return 0;

var obj  = instance_create(king.x, king.y, OBJ_KingDead);
obj.image_xscale = king.image_xscale;

with (king) instance_destroy();
