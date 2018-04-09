<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Items extends CI_Controller {
	
	function __construct() {
        parent::__construct();
		$this->load->model('items/itemmodel');
		$this->load->view('template/header');
	}
	
	function index() {
		
	}
	
	function addItem() {
	}
	
	function updateItem() {
	
	}
	
	function deleteItemById() {
		
	}
	
	function getItemById() {
		
	}
}

?>