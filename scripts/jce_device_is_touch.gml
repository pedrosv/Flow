///jce_device_is_touch() : bool

//Returns whether the device is a touch device
//Default is true

ret = true;
switch (os_type)
{
    case os_windows: ret = NO; break;
    case os_linux: ret = NO; break;
    case os_macosx: ret = NO; break;
    case os_win8native: ret = win8_device_touchscreen_available(); break;
    
    case os_winphone: ret = YES; break;
    case os_ios: ret = YES; break;
    case os_android: ret = YES; break;
    
    default: ret = YES;
}
 
return ret;
