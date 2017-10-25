<?php  
/**
* 
*/
class Users extends CI_Model
{
	
	public function getUser($email = '')
	{
		$resultado = $this->db->query("SELECT * FROM users WHERE email = '$email' ");
		if ($resultado->num_rows()>0) {
			return $resultado->row();
		}else{
			return null;
		}
	}
}
?>