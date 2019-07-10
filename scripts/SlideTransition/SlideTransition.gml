///@desc SlideTranstion(mode,TargetRoom)
///@arg Mode sets Transtion mode between next restart and goto
///@arg Target sets target room when using the goto mode

with(oTransaition)
{
	mode = argument[0];
	
	if(argument_count>1)target = argument[1];
}
