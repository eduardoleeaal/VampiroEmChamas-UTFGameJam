/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);


draw_set_font(fnt_vampire);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

var _tam_menu = array_length(menu_inicial);

for(var _i = 0; _i < _tam_menu; _i++)
{
	var  _wgui = display_get_gui_width();
	var  _hgui = display_get_gui_height();
	
	var _hstr = string_height("I");
	var _wstr = string_width(menu_inicial[_i]);
	
	var _x1 = _wgui / 2 - _wstr / 2;
	var _y1 = _hgui / 2 - _hstr / 2 + _hstr * _i;
	
	var _x2 = _wgui / 2 + _wstr / 2;
	var _y2 = _hgui / 2 + _hstr / 2 + _hstr * _i;
	
	if(point_in_rectangle(_mx, _my, _x1, _y1, _x2, _y2))	
	{
		esc[_i] = lerp(esc[_i], 1.4, 0.15)
		
		if(mouse_check_button_pressed(mb_left))
		{
			switch menu_inicial[_i]
			{
				case menu_inicial[0]: // Play
				room_goto(rm_jogo);
				break;
				case menu_inicial[1]:
				room_goto(rm_tutorial);
				break;
				case menu_inicial[2]: // Credits
				room_goto(rm_creditos);
				break;
				case menu_inicial[3]: // Quit
				game_end();
				break;
			}
		}
	}
	else
	{
		esc[_i] = lerp(esc[_i], 1, 0.15);
	} 
		
		
	draw_text_transformed(_wgui / 2, _hgui / 2 + _hstr * _i, menu_inicial[_i], esc[_i], esc[_i], 0);
}

draw_set_halign(-1);
draw_set_valign(-1);
draw_set_font(-1);


