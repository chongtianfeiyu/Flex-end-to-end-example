<?php

require_once "MyVO.php";

class MyDAO {
	public function __construct() {
		//setup $this->connection here for use in CRUD
	}
	protected $connection;

	//the method used by _service in MyDelegate
	//and RemoteObjectInvoker in MyEventMap
	public function read( $id ) {
		//do the read using the uint passed in and return a MyVO
		
		//if this was a create/update/destroy method
		//it might have this signature instead:
		//public function create( MyVO $vo ) {}
	}
}
?>