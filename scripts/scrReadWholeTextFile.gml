var result = ""

file = file_text_open_read(argument0);
while (!file_text_eof(file))
{
    if (!file_text_eoln(file))
    {
        result += file_text_read_string(file)
    }
    else 
    {
        result += chr(13)
        file_text_readln(file);
    }
}
file_text_close(file);

return result;
