<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PagesController extends Controller
{
	/**
	* Front page
	*/
	public function getIndex() {
		return view('main');
	}

	/**
	* Show case page
	*/
	public function getDevelopers() {
		return view('developers');
	}

	/**
	* Services page
	*/
	public function getBlog() {
		return view('blog');
	}

	/**
	* Contact page
	*/
	public function getContact() {
		return view('contacto');
	}
}