///jce_menu_goto_previous()

//Create the previous menu

ds_list_delete(global.MENU_LIST,ds_list_size(global.MENU_LIST)-1);
global.MENU_NEXT = ds_list_find_value(global.MENU_LIST,ds_list_size(global.MENU_LIST)-1);

with(par_menu)event_user(0);
