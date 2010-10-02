package com.phylake.cairngorm.commands
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.phylake.both.events.MyEvent;
	import com.phylake.both.model.MyVO;
	import com.phylake.cairngorm.business.MyDelegate;
	import com.phylake.cairngorm.model.ModelLocator;
	
	import mx.rpc.IResponder;

	public class MyCommand implements ICommand, IResponder
	{
		public function MyCommand() {/*constructor isn't typically used*/}
		
		private var _model : ModelLocator = ModelLocator.getInstance();
		
		public function execute( e : CairngormEvent ): void {
			//do something (which is often the following)

			//1. cast e to MyEvent and handle data packed with it
			//2. do any data validation, data transformation, etc.
			//3. set up your delegate and execute a RPC with the data just processed
			
			var id : uint = uint( (e as MyEvent).data );//read id from persistence
			
			var delegate : MyDelegate = new MyDelegate(this);
			delegate.read( id );
		}

		public function result( e : Object ) : void {
			//if execute had RPC, handle result here

			//you'll probably need to bring in your
			//ModelLocator Singleton to update the model

			//if your result is a collection of VOs you'll call fromVO() on each
			
			_model.modelObject.fromVO( e.result as MyVO );
		}

		public function fault( e : Object ) : void {
			//if execute had RPC, handle fault here
		}
	}
}