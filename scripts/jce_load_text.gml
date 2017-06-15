///jce_load_text(key, default_value)

//Loads text from the external ini language file

ds_map_add(global.text_map,argument0,ini_read_string('Texts',argument0,argument1));
