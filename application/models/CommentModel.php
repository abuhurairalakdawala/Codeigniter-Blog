<?php

class CommentModel extends CI_Model
{
	public function __construct()
	{
		parent::__construct();
	}

	public function add(array $data)
	{
		return $this->db->insert('comments', $data);
	}
}