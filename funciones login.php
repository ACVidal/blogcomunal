<?php  
/**
* 
*/
class Login extends CI_Controller
{
	public function index ()
	{
		$email = $this->input->post('email');
		$password = $this->input->post('password');

		$this->load->model('users');
		$fila = $this->users->getUser($email);

		if ($fila !=null) {
			if ($fila->password == $password) {
				$data = array(
						'id' 	=> $fila->id,
						'email' => $email,
						'login' => true 
				);

		$this->session->set_userdata($data);
			}else{}
		}else{}
		header("Location:".base_url());
	}

	public function logout(){
		$this->session->sess_destroy();
		header("Location:".base_url());
	}
}
?>