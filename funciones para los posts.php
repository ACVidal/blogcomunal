<?php  
/**
FUNCIONES PARA LOS POSTS
**/
class Post extends CI_Model
{
	public function getPost()
	{
		return $this->db->get('post');
	}

	public function getPostByName($nombrePost ='')
	{
		$nombre = str_replace("-"," ",$nombrePost);
		$resultado=$this->db->query("SELECT * FROM post WHERE nombrePost='$nombre' LIMIT 1");
		return $resultado->row();
	}

	public function getPostById($id ='')
	{
		$resultado=$this->db->query("SELECT * FROM post WHERE id='$id'");
		return $resultado->row();
	}

	public function insert($post = null){
		if ($post!= null) {
			$nombrePost = $post['nombrePost'];
			$descripcion = $post['descripcion'];
			$contenido = $post['contenido'];
			$file_name = $post['file_name'];

			$sentencia = "INSERT INTO post(id, nombrePost,descripcion,contenido,fecha,img) VALUES (null,'$nombrePost','$descripcion','$contenido',curdate(),'$file_name')";
			if ($this->db->query($sentencia)){
				return true;
			}	
		}
		return false;
	}

	public function num_post(){
		$total = $this->db->query("SELECT count(*) AS total FROM post")->row()->total;
		return intval($total);
	}

	public function get_pagination($numero_por_pagina){
		return $this->db->get("post", $numero_por_pagina, $this->uri->segment(3));
	}
}
?>