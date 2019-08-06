/// @description Auto Save
//OverWrite old save

if(file_exists(SAVEFILE)) file_delete(SAVEFILE);

//Create a new save file
var file;
file = file_text_open_write(SAVEFILE);
file_text_write_real(file,room);
file_text_close(file);




