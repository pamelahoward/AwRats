/// @desc Undefined Description

draw_set_alpha(1);
draw_set_color(c_black);
draw_set_font(fnt_default);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(16,16,"Rats Remaining: " + string(instance_number(obj_rat)));