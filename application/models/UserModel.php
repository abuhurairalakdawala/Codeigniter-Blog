<?php

class UserModel extends CI_Model
{
	public function __construct()
	{
		parent::__construct();
	}

	public function login($username)
	{
		return $this->db->select('id,username,password,salt,role_id')->where(['username'=>$username])->limit(1)->get('users');
	}

}