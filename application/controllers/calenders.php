<?php
  class Calenders extends CI_controller{
    public function index(){
      $data['title']       = 'Calender';
      $this->load->view('templates/header');
      $this->load->view('templates/footer');
      echo $this->calendar->generate();
      
    }
  }