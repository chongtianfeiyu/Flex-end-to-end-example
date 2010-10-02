package com.phylake.cairngorm.model
{
	import com.phylake.both.model.*;
	
	import com.adobe.cairngorm.CairngormError;
	import com.adobe.cairngorm.CairngormMessageCodes;
	import com.adobe.cairngorm.model.IModelLocator;
	
	[Bindable]
	public class ModelLocator implements IModelLocator
	{
		private static var _instance : ModelLocator;
		
		public static function getInstance() : ModelLocator {
			if ( _instance == null ) _instance = new ModelLocator();
	  		return _instance;
	  	}
	  	
	  	public function ModelLocator() {	
		  	if ( _instance != null ) throw new CairngormError( CairngormMessageCodes.SINGLETON_EXCEPTION, "ModelLocator" );
		 	_instance = this;
		 	
			//initalize model objects here
			modelObject = new MyModel;
		}
		
	    public var modelObject  : MyModel;
	}
}