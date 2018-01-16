<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
	public function index(){
		if($this->session->userdata('logged_in')){
			$data['title']		=	'Dashbaord';
			
			$data['projects']		=	$this->project_model->get_project_user();
			$data['posts']  = $this->post_model->get_all_post();
			$data['tasks']  = $this->task_model->get_all_tasks();

			$this->load->view('templates/header');
			$this->load->view('home',$data);
			$this->load->view('templates/footer');
		}else{
			redirect('users/login');
		}
	
		
	}
}
