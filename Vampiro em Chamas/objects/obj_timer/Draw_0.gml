draw_set_colour(make_colour_rgb(177, 40 ,40))
draw_set_font(fnt_vampire2)
draw_set_halign(fa_left)
draw_set_valign(fa_top)

var t = ""
t+=string(t_min)
t+=":"
if t_sec > 9 { t +=""+string(t_sec)}
if t_sec < 10 { t +="0"+string(t_sec)}	

 t += ":0"
 t +=string(t_mil)

draw_text(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),t) 
