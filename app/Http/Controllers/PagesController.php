<?php

namespace App\Http\Controllers;

use App\Models\CartItem;
use App\Models\Category;
use App\Models\Order;
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

    public function product($id) {
        $product = Product::findOrFail($id);
        $relatedProducts = Product::where('category_id', $product->category_id)->get();
        $cartItem = CartItem::where('product_id', $product->id)->first();

        return view('frontend.product', [
            'item' => $cartItem,
            'relatedProducts' => $relatedProducts,
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

        $q = Product::where('name', 'LIKE', '%' . $s . '%');

        return view('frontend.shop', [
            'products' => $q->paginate(12),
            'productCount' => $q->count(),
            'categories' => Category::all()
        ]);
    }

    public function cart()
    {
        $items = session()->get('cart');

        if (session()->has('cart')) {
            return view('frontend.cart', [
                'items' => session()->get('cart')
            ]);
        }

        return redirect()->route('shop')->with('error', 'No products on cart!');
    }

    public function checkout()
    {
        return view('frontend.checkout', [
            'items' => session()->get('cart')
        ]);
    }

    public function order(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required',
            'email' => 'required|email',
            'phone' => 'required',
            'address' => 'required'
        ]);

        Order::create([
           'name' => $request->name,
           'email' => $request->email,
           'phone' => $request->phone,
           'address' => $request->address
        ]);

        return redirect()->back()->with('success', 'Order created successfully');
    }

    public function addToCart(Request $request)
    {
        $product_id = (int)$request->input('product_id');
        $product_quantity = (int)$request->input('quantity');

        $product = Product::find($product_id);

        if (!$product) {
            return response()->json(['error' => 'Product not found!']);
        }

        $cart = $this->addItemToCart($product_id, $product_quantity);

//        $cart[$product_id]['quantity'] = $cart[$product_id]['quantity'] + $product_quantity;

        session()->put('cart', $cart);

        return response()->json([
            'item' => $cart[$product_id],
            'success' => 'Product added to cart successfully!'
        ]);
    }

    public function addItemToCart($id, $quantity = 0)
    {
        $product = Product::findOrFail($id);
        $cart = session()->get('cart');

        if (isset($cart[$id])) {
            $cart[$id] = [
                'id' => $product->id,
                'name' => $product->name,
                'image' => $product->image,
                'price' => $product->price,
                'description' => null,
                'quantity' => $cart[$id]['quantity'] + $quantity,
                'itemTotal' => $product->price * $cart[$id]['quantity']
            ];
        } else {
            $cart[$id] = [
                'id' => $product->id,
                'name' => $product->name,
                'image' => $product->image,
                'price' => $product->price,
                'description' => null,
                'quantity' =>  $quantity,
                'itemTotal' => $product->price
            ];
        }

        session()->put('cart', $cart);

        return $cart;
    }

    public function removeFromCart($id)
    {
        $cart = session()->get('cart', []);

        if (isset($cart[$id])) {
            unset($cart[$id]);
        }

        session()->put('cart', $cart);

        return response()->json(['success' => 'Product removed from cart successfully!']);
    }

    public function incrementItemQty($id)
    {
        $cart = session()->get('cart', []);

        $item = $this->addItemToCart($id);

        session()->forget('cart');
        session()->put('cart', $cart);

        $product = Product::findOrFail($id);
        $relatedProducts = Product::where('category_id', $product->category_id)->get();

        return view('frontend.product', [
            'item' => $item[$id],
            'relatedProducts' => $relatedProducts
        ]);
    }

    public function decrementItemQty($id)
    {
        $cart = session()->get('cart', []);

        $cart[$id]['quantity']--;
        if ($cart[$id]['quantity'] > 0) {
            $cart[$id]['itemTotal'] = $cart[$id]['price'] * $cart[$id]['quantity'];

            $item = $this->addItemToCart($id);

            session()->forget('cart');
            session()->put('cart', $cart);
        }

        return view('frontend.product', [
            'item' => $item
        ]);
    }
}
