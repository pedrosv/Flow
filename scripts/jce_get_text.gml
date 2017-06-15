///jce_get_text(key)

/* 
This script returns the text that is paired with a given key

argument0 - Key (string)

EG: string_to_display = jce_get_text('menu_title_text')
*/

return string(ds_map_find_value(global.text_map,argument0));
