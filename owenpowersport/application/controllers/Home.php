<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
	
	function __construct() {
        parent::__construct();
		$this->load->model('crudmodel');
    }
	
	public function display() {
		$result['data']= $this->crudmodel->get_data();
		$this->load->view('template/header', $result);
		$this->load->view('home_view');
		$this->load->view('template/footer');
	}
	
	public function insert() {
		$data = array(
			'part_num' => $this->input->post('part_num'),
			'item' => $this->input->post('item'),
			'quantity' => $this->input->post('quantity'),
			'brand' => $this->input->post('brand'),
			'capital' => $this->input->post('capital'),
			'description' => $this->input->post('description'),
			'category' => $this->input->post('category'),
			'location' => $this->input->post('location'),
		);
		
        $this->crudmodel->add($data);
		$this->load->view('template/header');
		$this->load->view('welcome_message');
		$this->load->view('template/footer');
	}
	
	public function add() {
		$this->load->view('template/header');
		$this->load->view('add_view');
		$this->load->view('template/footer');
	}
	
	
	public function genuine() {
		$category = 'genuine';
		$result['data']= $this->crudmodel->get_data();
		$result['genuine']= $this->crudmodel->get_specific($category);
		$this->load->view('template/header',$result);
		$this->load->view('genuine_view');
		$this->load->view('template/footer');
	}
	
	public function accessories() {
		$category='accessories';
		$result['data']= $this->crudmodel->get_data();
		$result['accessories']= $this->crudmodel->get_specific($category);
		$this->load->view('template/header',$result);
		$this->load->view('accessories_view');
		$this->load->view('template/footer');
	}
	
	public function plastic() {
		$category = 'plastic';
		$result['data']= $this->crudmodel->get_data();
		$result['plastic']= $this->crudmodel->get_specific($category);
		$this->load->view('template/header',$result);
		$this->load->view('plastic_view');
		$this->load->view('template/footer');
	}
	
	public function local() {
		$category = 'local';
		$result['data']= $this->crudmodel->get_data();
		$result['local']= $this->crudmodel->get_specific($category);
		$this->load->view('template/header',$result);
		$this->load->view('local_view');
		$this->load->view('template/footer');
	}
	
	public function racing() {
		$category = 'racing';
		$result['data']= $this->crudmodel->get_data();
		$result['racing']= $this->crudmodel->get_specific($category);
		$this->load->view('template/header',$result);
		$this->load->view('racing_view');
		$this->load->view('template/footer');
	}
	
	public function utang() {
		$category = 'utang';
		$result['racing']= $this->crudmodel->get_specific($category);
		$this->load->view('template/header',$result);
		$this->load->view('utang_view');
		$this->load->view('template/footer');
	}
	
	
	public function addutang() {
		$category = 'utang';
		$result['racing']= $this->crudmodel->get_specific($category);
		$this->load->view('template/header',$result);
		$this->load->view('add_utang');
		$this->load->view('template/footer');
	}
}