<?php

namespace Database\Seeders;

use App\Models\User;
use App\Models\Category;
use App\Models\Customer;
use App\Models\Order;
use App\Models\Product;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $women = Category::create([
            'name' => 'Women',
        ]);

        $men = Category::create([
            'name' => 'Men',
        ]);

        $kids = Category::create([
            'name' => 'Kids',
        ]);

        $accessories = Category::create([
            'name' => 'Accessories',
        ]);

        Product::factory(10)->create([
            'category_id' => $women->id,
            'image' => 'images/item-01.jpg'
        ]);

        Product::factory(10)->create([
            'category_id' => $men->id,
            'image' => 'images/item-02.jpg',
            'is_featured' => true
        ]);

        Product::factory(10)->create([
            'category_id' => $kids->id,
            'image' => 'images/item-03.jpg',
            'is_featured' => true
        ]);

        Product::factory(10)->create([
            'category_id' => $accessories->id,
            'image' => 'images/item-01.jpg'
        ]);

        User::factory()->create([
            'name' => 'Admin',
            'email' => 'admin@email.com',
        ]);

        Customer::factory(10)->create();

        Order::factory(100)->create([
            'customer_id' => fake()->unique()->numberBetween(1, 10),
        ]);
    }
}
