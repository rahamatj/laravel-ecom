<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use App\Models\Product;

class ProductController extends Controller
{
    public function products()
    {
        return view('admin.products.all', [
            'products' => Product::all()
        ]);
    }

    public function createProduct()
    {
        return view('admin.products.create', [
            'categories' => Category::all()
        ]);
    }

    public function storeProduct(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required',
            'image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'price' => 'required',
            'description' => 'required',
            'category_id' => 'required',
            'is_featured' => 'required'
        ]);

        $product = Product::create([
            'name' => $request->name,
            'image' => $request->image,
            'price' => $request->price,
            'description' => $request->description,
            'category_id' => $request->category_id,
            'is_featured' => $request->is_featured
        ]);

        return view('admin.products.all', [
            'products' => Product::latest()->get()
        ]);
    }

    public function editProduct($id)
    {
        return view('admin.products.edit', [
            'categories' => Category::all(),
            'product' => Product::find($id)
        ]);
    }

    public function updateProduct(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'price' => 'required',
            'description' => 'required',
            'category_id' => 'required',
            'is_featured' => 'required'
        ]);

        Product::find($request->id)->update([
            'name' => $request->name,
            'image' => $request->image,
            'price' => $request->price,
            'description' => $request->description,
            'category_id' => $request->category_id,
            'is_featured' => $request->is_featured
        ]);

        return view('admin.products.all', [
            'products' => Product::all()
        ]);
    }

    public function deleteProduct($id)
    {
        Product::find($id)->delete();

        return view('admin.products.all', [
            'products' => Product::all()
        ]);
    }
}
