<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class crudmodel extends CI_Model {


public function add($data){
	
$this->db->insert('owenpowersport', $data); 
// Produces: INSERT INTO mytable (title, name, date) VALUES ('My title', 'My name', 'My date')

}

public function edit($id){
	$data = array(
               'title' => $title,
               'name' => $name,
               'date' => $date
            );

$this->db->where('id', $id);
$this->db->update('mytable', $data); 

// Produces:
// UPDATE mytable 
// SET title = '{$title}', name = '{$name}', date = '{$date}'
// WHERE id = $id
}

public function delete_data(){
	$this->db->where('id', $id);
$this->db->delete('mytable'); 

// Produces:
// DELETE FROM mytable 
// WHERE id = $id
}

public function get_data(){
	 $query = $this->db->get('owenpowersport');
 return $query->result();
// Produces: SELECT * FROM mytable
	
}

public function get_rows($category){
				$this->db->select('*');
                $this->db->where('category',$category);
                $query = $this->db->get('owenpowersport');
                return $query->result();
				return $query->num_rows();
}

public function get_specific($category){
				$this->db->select('*');
                $this->db->where('category',$category);
                $query = $this->db->get('owenpowersport');
                return $query->result();
	
}


}
