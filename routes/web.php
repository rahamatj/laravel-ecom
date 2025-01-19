<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PagesController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductController;

Route::get('/product/{id}', [PagesController::class, 'product'])->name('product');

Route::get('/shop', [PagesController::class, 'shop'])->name('shop');
Route::get('/cart', [PagesController::class, 'cart'])->name('cart');
Route::get('/checkout', [PagesController::class, 'checkout'])->name('checkout');
Route::post('/cart/add', [PagesController::class, 'addToCart'])->name('cart.add');
Route::get('/cart/remove/{id}', [PagesController::class, 'removeFromCart'])->name('cart.remove');
Route::get('/cart/increment/{id}', [PagesController::class, 'incrementItemQty'])->name('cart.increment');
Route::get('/cart/decrement/{id}', [PagesController::class, 'decrementItemQty'])->name('cart.decrement');
Route::get('/', [PagesController::class, 'home'])->name('home');

Route::get('filter/{id}/category', [PagesController::class, 'filterByCategory'])->name('filter-by-category');
Route::post('search-shop', [PagesController::class, 'searchShop'])->name('search-shop');
Route::get('categories/{id}', [PagesController::class, 'category'])->name('category');

Route::get('admin/dashboard', [AdminController::class, 'dashboard'])->name('admin.dashboard');

Route::get('admin/categories/all', [CategoryController::class, 'categories'])->name('admin.categories.all');
Route::get('admin/categories/create', [CategoryController::class, 'createCategory'])->name('admin.categories.create');
Route::post('admin/categories/store', [CategoryController::class, 'storeCategory'])->name('admin.categories.store');
Route::get('admin/categories/edit/{id}', [CategoryController::class, 'editCategory'])->name('admin.categories.edit');
Route::patch('admin/categories/update/{id}', [CategoryController::class, 'updateCategory'])->name('admin.categories.update');
Route::delete('admin/categories/delete/{id}', [CategoryController::class, 'deleteCategory'])->name('admin.categories.delete');

Route::get('admin/products/all', [ProductController::class, 'products'])->name('admin.products.all');
Route::get('admin/products/create', [ProductController::class, 'createProduct'])->name('admin.products.create');
Route::post('admin/products/store', [ProductController::class, 'storeProduct'])->name('admin.products.store');
Route::get('admin/products/edit/{id}', [ProductController::class, 'editProduct'])->name('admin.products.edit');
Route::patch('admin/products/update/{id}', [ProductController::class, 'updateProduct'])->name('admin.products.update');
Route::delete('admin/products/delete/{id}', [ProductController::class, 'deleteProduct'])->name('admin.products.delete');

Route::get('admin/orders', [AdminController::class, 'orders'])->name('admin.orders.all');
