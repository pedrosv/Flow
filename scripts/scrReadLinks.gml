// I know I shouldn't, but let's start index at 1 instead of 0

i=1
global.socialLinks[i]=""



file = file_text_open_read("links.txt");
while (!file_text_eof(file))
{
    if (!file_text_eoln(file))
    {
        global.socialLinks[i] += file_text_read_string(file)
    }
    else 
    {
        file_text_readln(file);
        i += 1
        global.socialLinks[i]=""
    }
}
file_text_close(file);



