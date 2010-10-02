package com.phylake.cairngorm.control
{
	import com.phylake.cairngorm.commands.*;
	import com.phylake.both.events.*;

	import com.adobe.cairngorm.control.FrontController;

	public class Controller extends FrontController
	{
		public function Controller()
		{
			initializeCommands();
		}

		public function initializeCommands() : void
		{
			//add this for every event/command pair
			addCommand(MyEvent.DO_SOMETHING, MyCommand);
		}
	}
}