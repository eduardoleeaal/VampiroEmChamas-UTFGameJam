/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);


draw_set_font(fnt_vampire);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var _tam_menu = array_length(menu_inicial);

for(var _i = 0; _i < _tam_menu; _i++)
{
	var  _wgui = display_get_gui_width();
	var  _hgui = display_get_gui_height();
	
	var _hstr = string_height("I");
	var _wstr = string_width(menu_inicial[_i]);
	
	var _x1 = 15;
	var _y1 = 855;
	
	var _x2 = 250;
	var _y2 = 955;
	
	if(point_in_rectangle(_mx, _my, _x1, _y1, _x2, _y2))	
	{
		esc[_i] = lerp(esc[_i], 1.4, 0.15)
		
		if(mouse_check_button_pressed(mb_left))
		{
			switch menu_inicial[_i]
			{
				case menu_inicial[0]: // Play
				room_goto(rm_inicial);
				break;
			}
		}
	}
	else
	{
		esc[_i] = lerp(esc[_i], 1, 0.15);
	} 
		
		
	draw_text_transformed(15, 855, menu_inicial[_i], esc[_i], esc[_i], 0);
}

draw_set_halign(-1);
draw_set_valign(-1);
draw_set_font(-1);


