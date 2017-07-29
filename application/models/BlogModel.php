<?php

class BlogModel extends CI_Model
{
	public function __construct()
	{
		parent::__construct();
	}

	public function add(array $data)
	{
		return $this->db->insert('blogs', $data);
	}

	public function getAll()
	{
		return $this->db->order_by('id DESC')->get('blogs');
	}

	public function getOne($id)
	{
		return $this->db->where(['id' => $id])->limit(1)->get('blogs');
	}

	public function delete($id)
	{
		return $this->db->where(['id' => $id])->limit(1)->delete('blogs');
	}

	public function search($query)
	{
		return $this->db->order_by('id DESC')->like('blog_title', $query)->get('blogs');
	}

	public function saveOne(array $data, $id)
	{
		return $this->db->where('id', $id)->limit(1)->update('blogs', $data);
	}

	public function getItemComments($id)
	{
		return $this->db->where('blog_id', $id)->order_by('comments.id DESC')->join('users', 'users.id=comments.user_id', 'inner')->select('comments.id,user_id,username,comments')->get('comments');
	}

}