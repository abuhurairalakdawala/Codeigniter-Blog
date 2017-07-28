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
		return $this->db->get('blogs');
	}

	public function getOne($id)
	{
		return $this->db->where(['id' => $id])->limit(1)->get('blogs');
	}
}