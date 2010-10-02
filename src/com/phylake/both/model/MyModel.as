package com.phylake.both.model
{
	/**
	 * This is bindable. It's the canonical object I work with in
	 * Flex. By convention I only allow VOs to be handled by this
	 * type of wrapper object. In the getters and setters is where
	 * you can pack/unpack string, bit fields, etc. for use by
	 * your application
	 */
	[Bindable]
	public class MyModel
	{
		public function MyModel() {}

		private var _field1 : String;
		public function get field1() : String {
			return _field1;
		}
		public function set field1( value : String ) : void {
			_field1 = value;
		}


		private var _field2 : String;
		public function get field2() : String {
			return _field2;
		}
		public function set field2( value : String ) : void {
			_field2 = value;
		}

		/**
		 * VO translation
		 */
		public function toVO() : MyVO {
			var vo : MyVO = new MyVO;
			vo.field1 = field1;
			vo.field2 = field2;
			return vo;
		}
		
		/**
		 * VO translation
		 */
		public function fromVO( vo : MyVO ) : void {
			field1 = vo.field1;
			field2 = vo.field2;
		}
	}
}