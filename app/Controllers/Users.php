<?php

namespace App\Controllers;

use App\Models\UserModel;

class Users extends BaseController
{
    public function index()
    {
        $model = new UserModel();

        return view('users/index', [
            'users' => $model->findAll()
        ]);
    }
}
