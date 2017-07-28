<?php

class Login extends CI_Controller
{
	public function index()
	{
		$this->load->library('form_validation');
		$this->form_validation->set_rules('username', 'Username', 'trim|required|alpha_numeric');
		$this->form_validation->set_rules('password', 'Password', 'trim|required');
		$error = '';
		if ($this->form_validation->run()){
			$this->load->model('userModel');
			$login = $this->userModel->login($this->input->post('username'));
			if($login->num_rows() === 1){
				$user = $login->row();
				if($user->password === hash('sha256', $this->input->post('password').$user->salt)){
					$this->session->user_id = $user->id;
					$this->session->role_id = $user->role_id;
					$this->session->username = $user->username;
					redirect('blog/show');
				} else {
					$error = 'Incorrect username/password';
				}
			} else {
				$error = 'Incorrect username/password';
			}
		}
		$this->load->view('login/index', ['error'=>$error]);
	}

	public function destroy()
	{
		$this->session->user_id = null;
		$this->session->role_id = null;
		$this->session->username = null;
		redirect('login');
	}
				// $salt = md5(time().	'dfdsfdsfsa56df4sed5f4sd5');
				// var_dump($salt);
				// var_dump(hash('sha256', '12345'.$salt));
}