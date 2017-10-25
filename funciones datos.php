<?php  
/**
* 
*/
class About extends CI_Controller
{
	public function index($info =''){
		$data = array(
			'titulo' 		=>'Asturquesos',
			'app' 			=>'Asturquesos',
			'subtitulo'		=>'El blog de los quesos',
			'autor'			=>'Turo Carballo',
			'descripcion'	=>' Se produce queso desde hace miles de años, cuando nuestros antepasados descubrieron por casualidad que la leche se solidificaba cuando la transportaban en el estómago de los animales. Desde entonces el hombre se ha empeñado en mejorar la técnica para perfeccionar texturas y sabores.',
			'descripcion1'	=>'Asturias, nuestro territorio, tiene la maravillosa característica de ser la mayor mancha quesera de Europa. En su despensa se pueden encontrar más de 40 tipos de quesos, desde los más suaves hasta azules que desafían a los paladares más entrenados. Nosotros, amantes de los quesos desde hace muchos años, queremos ofreceros una experiencia única, ofreciendo las mejores variedades de quesos seleccionadas por los mejores maestros queseros de Asturias. ¡Que los disfrutéis!'
				);
		$this->load->view("guest/head",$data);
		$this->load->view("guest/nav",$data);
		$this->load->view("guest/header",$data);
		$this->load->view("guest/about",$data);
		$this->load->view("guest/footer",$data);
	}
}

?>