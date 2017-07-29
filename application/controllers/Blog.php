<?php

class Blog extends CI_Controller
{
	public $js;

	public function add()
	{
		$this->js = '<script type="text/javascript" src="'.base_url('assets/js/add-blog.js').'"></script>';
		$this->load->view('layouts/header');
		$this->load->view('blog/add');
		$this->load->view('layouts/footer');
	}

	public function save()
	{
		if(!isLoggedIn()){
			echo json_encode(['error' => ['base-err' => 'Please Login To Add Blog!']]);
			return;
		}
		if(!canManageBlog()){
			echo json_encode(['error' => ['base-err' => 'You dont have permission to add blog!']]);
			return;
		}
		$this->load->library('form_validation');
		$this->form_validation->set_rules('blog-title', 'Blog Title', 'trim|required|max_length[150]');
		$this->form_validation->set_rules('editor', 'Blog Content', 'trim|required');
		if ($this->form_validation->run())
		{
			$this->load->library('upload', ['allowed_types' => 'jpg|png|jpeg', 'upload_path' => 'assets/images/blogs', 'encrypt_name' => true]);
			if(!$this->upload->do_upload('file')){
				echo json_encode(['error' => ['file-err' => $this->upload->display_errors('','')]]);
				return;
			}
			$this->load->model('blogModel');
			$insert = $this->blogModel->add([
				'blog_title' => $this->input->post('blog-title'),
				'blog_content' => $this->input->post('editor'),
				'blog_banner' => $this->upload->data('file_name'),
				'user_id' => $this->session->user_id,
				'created_at' => date('Y-m-d H:i:s')
			]);
			if($insert === true){
				$this->session->set_flashdata('blogAddOk', successMessage('Blog Added Successfully!'));
				echo json_encode(['success'=>true]);
				return;
			}
			echo json_encode(['error' => ['base-err' => 'Somehting went wrong! Please try again!']]);
			return;
		}
		echo json_encode(['error' => ['title-err'=>form_error('blog-title'),'editor-err'=>form_error('editor')]]);
	}

	public function show()
	{
		$this->js = '<script type="text/javascript" src="'.base_url('assets/js/delete-blog.js').'"></script>';
		$this->load->model('blogModel');
		$blogs = $this->blogModel->getAll();
		$this->load->view('layouts/header');
		$this->load->view('blog/show', ['blogs' => $blogs->result()]);
		$this->load->view('layouts/footer');
	}

	public function item($id=0)
	{
		if(!ctype_digit($id)){
			show_404();
		}
		$this->load->model('blogModel');
		$blog = $this->blogModel->getOne($id);
		if($blog->num_rows() === 0){
			show_404();
		}
		$this->load->view('layouts/header');
		$this->load->view('blog/item', ['blog' => $blog->row()]);
		$this->load->view('layouts/footer');
	}

	public function delete($id=0)
	{
		if(!ctype_digit($id)){
			echo json_encode(['error' => 'Invalid Blog!']);
			return;
		}
		if(!isLoggedIn()){
			echo json_encode(['error' => 'Please Login!']);
			return;
		}
		if(!canManageBlog()){
			echo json_encode(['error' => 'You dont have permission!']);
			return;
		}
		$this->load->model('blogModel');
		if(isAdmin()){
			$this->blogModel->delete($id);
			echo json_encode(['success' => true]);
			return;
		}
		$blog = $this->blogModel->getOne($id);
		if($blog->num_rows() == 1){
			$blog = $blog->row();
			if($blog->user_id != $this->session->user_id){
				echo json_encode(['error' => 'You dont have permission!']);
				return;
			}
			$this->blogModel->delete($id);
			echo json_encode(['success' => true]);
			return;
		}
		echo json_encode(['error' => 'Invalid Blog!']);
	}

	public function edit($id=0)
	{
		if(!ctype_digit($id)){
			show_404();
		}
		$this->load->model('blogModel');
		$blog = $this->blogModel->getOne($id);
		if($blog->num_rows() == 0){
			show_404();
		}
		$this->js = '<script type="text/javascript" src="'.base_url('assets/js/add-blog.js').'"></script>';
		$this->load->view('layouts/header');
		$this->load->view('blog/edit', ['blog' => $blog->row()]);
		$this->load->view('layouts/footer');
	}

	public function search()
	{
		// $this->output->enable_profiler(true);
		$this->load->model('blogModel');
		$blogs = $this->blogModel->search($this->input->get('query'));
		$this->load->view('layouts/header');
		$this->load->view('blog/search', ['blogs' => $blogs->result()]);
		$this->load->view('layouts/footer');
	}

}
