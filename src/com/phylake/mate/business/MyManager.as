package com.phylake.mate.business
{
	import com.phylake.both.model.MyModel;
	import com.phylake.both.model.MyVO;
	
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;

	public class MyManager extends EventDispatcher
	{
		public function MyManager(target:IEventDispatcher=null)
		{
			super(target);
		}

		private var _someProperty : MyModel;
		public function set someProperty( value : MyVO ) : void {
			_someProperty = new MyModel;
			_someProperty.fromVO( value );
		}
	}
}