<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;

class CategoryController extends Controller
{
    public function categories()
    {
        return view('admin.categories.all', [
            'categories' => Category::all()
        ]);
    }

    public function createCategory()
    {
        return view('admin.categories.create');
    }

    public function storeCategory(Request $request)
    {

        $request->validate([
            'name' => 'required'
        ]);

        Category::create([
            'name' => $request->name
        ]);

        return view('admin.categories.all', [
            'categories' => Category::all()
        ]);
    }

    public function editCategory($id)
    {
        return view('admin.categories.edit', [
            'category' => Category::find($id)
        ]);
    }

    public function updateCategory(Request $request)
    {

        $request->validate([
            'name' => 'required'
        ]);

        Category::find($request->id)->update([
            'name' => $request->name
        ]);

        return view('admin.categories.all', [
            'categories' => Category::all()
        ]);
    }

    public function deleteCategory($id)
    {
        Category::find($id)->delete();

        return view('admin.categories.all', [
            'categories' => Category::all()
        ]);
    }
}
