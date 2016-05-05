/// background_behaviour()
var targetx;
targetx = OBJ_King.x + 80;
targetx -= view_wview[0] / 2; // Centralize
targetx = clamp(targetx, 0, room_width - view_wview[0]);

view_xview[0] = round(lerp(view_xview[0], targetx, 0.15));
background_x[0] = view_xview[0];
background_x[1] = view_xview[0] / 2;
background_x[2] = view_xview[0] / 4;
background_x[3] = view_xview[0] + 400;
