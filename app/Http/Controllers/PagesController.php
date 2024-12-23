<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class PagesController extends Controller
{
    public function home()
    {
        return view('frontend.home', [
            'featuredProducts' => Product::where('is_featured', 1)->get(),
        ]);
    }

    public function shop()
    {
        return view('frontend.shop', [
            'products' => Product::paginate(12),
            'productCount' => Product::all()->count(),
            'categories' => Category::all()
        ]);
    }

    public function filterByCategory($id)
    {
        return view('frontend.shop', [
            'products' => Product::where('category_id', $id)->paginate(12),
            'productCount' => Product::where('category_id', $id)->count(),
            'categories' => Category::all()
        ]);
    }

    public function searchShop(Request $request)
    {
        $s = $request->s;

        $q = Product::where('name', 'LIKE', '%' . $s . '%')
            ->orWhere('description', 'LIKE', '%' . $s . '%');

        return view('frontend.shop', [
            'products' => $q->paginate(12),
            'productCount' => $q->count(),
            'categories' => Category::all()
        ]);
    }

    public function cart()
    {
        $items = session()->get('cart');
        dd($items);

        if (session()->has('cart')) {
            return view('livewire.cart', [
                'items' => session()->get('cart')
            ]);
        }

        return redirect()->route('shop')->with('error', 'No products on session!');
    }

    public function addToCart(Request $request)
    {
        $productId = (int)$request->input('product_id');
        $product = Product::find($productId);

        if (!$product) {
            return redirect()->route('shop')->with('error', 'Product not found!');
        }

        $cart = session()->get('cart');

        // $cart[$productId]['quantity']

        if (isset($cart[$productId])) {
            // $quantity = $cart[$productId]['quantity'];
            // dump($cart[$productId]);
            // dump($quantity);
            // die();
            dump("if");
            $cart[$productId] = [
                'id' => $product->id,
                'name' => $product->name,
                'image' => $product->image,
                'price' => $product->price,
                'quantity' => $cart[$productId]['quantity'] + 1,
                // 'quantity' => 1,
                'itemTotal' => $product->price
            ];
        } else {
            dump("else");
            $cart[$productId] = [
                'id' => $product->id,
                'name' => $product->name,
                'image' => $product->image,
                'price' => $product->price,
                'quantity' => 1,
                'itemTotal' => $product->price
            ];
        }

        // dd((int)$productId);
        // dd($cart);

        // dd($cart[]);
        // dd($cart[2]);

        // $cart[$productId] = [
        //     'id' => $product->id,
        //     'name' => $product->name,
        //     'image' => $product->image,
        //     'price' => $product->price,
        //     // 'quantity' => $cart[$productId]['quantity'] + 1,
        //     'quantity' => 1,
        //     'itemTotal' => $product->price
        // ];

        session()->put('cart', $cart);

        return redirect()->route("shop")->with('success', 'Product added to cart successfully!');
    }

    public function incrementItemQty($id)
    {
        $cart = session()->get('cart', []);

        $cart[$id]['quantity']++;
        $cart[$id]['itemTotal'] = $cart[$id]['price'] * $cart[$id]['quantity'];
        session()->put('cart', $cart);

        return redirect()->back();
    }

    public function decrementItemQty($id)
    {
        $cart = session()->get('cart', []);
        $cart[$id]['quantity']--;
        if ($cart[$id]['quantity'] > 0) {
            $cart[$id]['itemTotal'] = $cart[$id]['price'] * $cart[$id]['quantity'];
            session()->put('cart', $cart);
        }

        return redirect()->back();
    }
}
