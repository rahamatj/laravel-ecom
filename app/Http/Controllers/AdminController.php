<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Order;

class AdminController extends Controller
{
    public function dashboard()
    {
        return view('admin.dashboard');
    }

    public function orders()
    {
        return view('admin.orders.all', [
            'orders' => Order::all()
        ]);
    }
}
