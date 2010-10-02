package com.phylake.both.model
{
	/*
		the alias is how the AMF endpoint
		will know what serialized object this is
	*/
	[RemoteClass(alias="MyVO")]
	public class MyVO
	{
		public var field1 : String;
		public var field2 : String;
	}
}