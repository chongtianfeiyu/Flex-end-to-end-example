package com.phylake.cairngorm.business
{
	import com.adobe.cairngorm.business.ServiceLocator;
	import com.phylake.both.model.MyVO;
	
	import mx.rpc.IResponder;

	public class MyDelegate
	{
		public function MyDelegate( responder : IResponder ) {
			//"myRO" is id of RemoteObject in Services.mxml
			_service = ServiceLocator.getInstance().getRemoteObject("myRO");
			_responder = responder;
		}

		private var _responder : IResponder;
		private var _service : Object;

		//------------------------------------
		//methods called by your Commands
		//------------------------------------

		/**
		 * This is called in your Commands
		 */
		public function read( id : uint ) : void {
			//_service is just an Object
			//whatever the name of your method inside
			//MyDAO.php is called is what you call on _service
			var call : Object = _service.read(id);
			call.addResponder( _responder );
		}
	}
}
