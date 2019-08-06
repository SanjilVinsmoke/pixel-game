/// @description MENU pressed

audio_play_sound(snDeath,10,false);
switch(menu_index) {

	case 0: SlideTransition(TRANS_MODE.NEXT);break;
	case 1:
	{
		if(!file_exists(SAVEFILE))
		{
			SlideTransition(TRANS_MODE.NEXT);	
		}
		else 
		{
			var file =  file_text_open_read(SAVEFILE);
			var target = file_text_read_real(file);
			file_text_close(file);
			SlideTransition(TRANS_MODE.GOTO,target);
		}
			
	}
	break;
	
		
	case 2:
		game_end();
		break;
}