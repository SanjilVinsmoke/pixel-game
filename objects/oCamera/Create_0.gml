/// @description Set up Camera

cam = view_camera[0];
follow = oPlayer;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam)*.5;
xTo =xstart;
yTo = ystart;

shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
buff =32;

// Layer id 

BackForest =layer_get_id("BackForest");
BackForest2 =layer_get_id("BackForest2");
LigthLayer =layer_get_id("LigthLayer");
LigthLayer2= layer_get_id("LigthLayer2");
FrontForest = layer_get_id("FrontForest");
FrontForest1 = layer_get_id("FrontForest1");
FrontForest2 = layer_get_id("FrontForest2");
TopForest = layer_get_id("TopForest");

