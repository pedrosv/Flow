///jce_point_in_view(x,y,padding)

/*
argument0 = x
argument1 = y
argument2 = padding

A handy use for this script is only drawing things if they are in view, or deactivating objects outside of the view.
*/

if (argument0+argument2 > view_xview[0])
{
    if (argument1+argument2 > view_yview[0])
    {
        if (argument0-argument2 < view_xview[0]+view_wview[0])
        {
            if (argument1-argument2 < view_yview[0]+view_hview[0])
                return YES;
        }
    }
}
    
return NO;
