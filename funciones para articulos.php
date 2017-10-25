<?php  
/**
* 
*/
class Article extends CI_Controller
{
	public function post($id=''){
		$data = array(
			'titulo' 	=>'Asturquesos',
			'app' 		=>'Asturquesos',
			'subtitulo'	=>'El blog de los quesos',
			'autor'		=>'Turo Carballo',
		);
		
		$this->load->view("guest/head",$data);
		$this->load->view("guest/nav",$data);
	
		$fila=$this->post->getPostById($id);
		if ($fila->img=="") {
			$imagen = "imagenpordefecto.jpg";
		}else{
			$imagen = $fila->img;
		}

		$datos = array(
			'id' 			=> $fila->id,
			'nombrePost'	=> $fila->nombrePost,
			'contenido' 	=> $fila->contenido,
			'descripcion' 	=> $fila->descripcion,
			'fecha' 		=> $fila->fecha,
			'imagen'		=> $imagen,
			'app' 			=>'Asturquesos',
			'subtitulo'		=> $fila->nombrePost, 
			'esunpost'		=> true
		);
		$this->load->view("guest/header",$datos);
		$this->load->view("guest/contentPost",$datos);
		$this->load->view("guest/footer",$data);
	}

	public function nuevo(){
		if (!$this->session->userdata('login')) {
			header("Location: ".base_url());
		}

		$data = array(
			'titulo' 	=>'Asturquesos',
			'app' 		=>'Asturquesos',
			'subtitulo'	=>'El blog de los quesos',
			'autor'		=>'Turo Carballo'
		);
		$this->load->view("guest/head",$data);
		$this->load->view("guest/nav",$data);
		$this->load->view("guest/header",$data);
		$this->load->view("user/nuevo");
		$this->load->view("guest/footer",$data);
	}

	public function insert(){
		if (!$this->session->userdata('login')) {
			header("Location: ".base_url());
		}
		$datosPost = $this->input->post();

		$this->load->model('fileupload');
		$file_name = $this->fileupload->UploadImage('./public/img','No es posible subir esa imagen...');
		$datosPost['file_name'] = $file_name;
		$altaok = $this->post->insert($datosPost);
		if ($altaok) {
			header("Location:".base_url()."profile");
		}else{
			header("Location:".base_url()."article/nuevo");
		}
	}

	public function delete(){
		if (!$this->session->userdata('login')) {
			header("Location: ".base_url());
		}
		$datosPost=$this->input->post();
		$nombrePost=$datosPost['nombrepost'];
		$id=$datosPost['id'];

		$sentencia="DELETE FROM post WHERE nombrePost='$nombrePost'";
		if ($this->db->query($sentencia)) {
			echo $id;
		}else{
			echo false;
		}
	}

	public function modificar($id){
		if (!$this->session->userdata('login')) {
			header("Location: ".base_url());
		}

		$data = array(
			'titulo' 	=>'Asturquesos',
			'app' 		=>'Asturquesos',
			'subtitulo'	=>'El blog de los quesos',
			'autor'		=>'Turo Carballo'
		);
		$this->load->view("guest/head",$data);
		$this->load->view("guest/nav",$data);
	

		$datos['fila']= $this->post->getPostById($id);
		$this->load->view("user/modificar",$datos);
		$this->load->view("guest/footer",$data);	
	}

	public function updatePost(){
		$datosFormulario = $this->input->post();
		$datos = array(
			'nombrePost' 	=> $datosFormulario['nombrePost'],
			'descripcion' 	=> $datosFormulario['descripcion'],
			'contenido' 	=> $datosFormulario['contenido'], 
			);
		$this->db->where('id',$datosFormulario['id']);
		if($this->db->update('post',$datos)){
			header("Location:".base_url('profile'));
		}else{
			echo "No se ha podido actualizar el post";
		} 
	}

	public function updateImage(){
		$this->load->model('fileupload');
		$file_name = $this->fileupload->UploadImage('./public/img','No es posible subir esa imagen...');
		$datosFormulario=$this->input->post();
		$id = $datosFormulario['id'];
		$datos['img'] = $file_name;

		$this->db->where('id',$id);
		if($this->db->update('post',$datos)){
			header("Location:".base_url()."/article/modificar/$id");
		}else{
			echo "No se ha podido actualizar la imagen";
		} 
	}
}
?>
