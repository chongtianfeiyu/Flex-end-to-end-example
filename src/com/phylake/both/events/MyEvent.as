package com.phylake.both.events
{
	import com.adobe.cairngorm.control.CairngormEvent;
	
	/**
	 * A normal mate event would just extend Event, not CairngormEvent
	 * I did it here to show it works for both frameworks
	 */
	public class MyEvent extends CairngormEvent
	{
		public static const DO_SOMETHING : String = "do something";
		
		//for a mate event you might add the following
		//since CairngormEvent already has a data variable
		//I'll leave this commented out
		//public var data : Object;
		
		//always make sure bubbles is true for mate
		public function MyEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}