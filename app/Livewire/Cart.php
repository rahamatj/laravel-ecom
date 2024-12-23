<?php

namespace App\Livewire;

use Livewire\Component;

class Cart extends Component
{
    public $items = [];
    public $cartTotal = 0;

    public function mount()
    {
        if (session()->has('cart')) {
            $this->items = session()->get('cart');
        }

        $this->updateCart();
    }

    public function updateCart()
    {
        $this->cartTotal = 0;
        foreach ($this->items as $item) {
            $this->cartTotal += $item['itemTotal'];
        }
    }

    public function render()
    {
        return view('livewire.cart');
    }

    public function incrementQuantity($id)
    {
        $cart = session()->get('cart', []);

        $this->items[$id]['quantity']++;
        $this->items[$id]['itemTotal'] = $this->items[$id]['price'] * $this->items[$id]['quantity'];
        session()->put('cart', $this->items);

        $this->updateCart();
    }

    public function decrementQuantity($id)
    {
        $this->items[$id]['quantity']--;
        if ($this->items[$id]['quantity'] > 0) {
            $this->items[$id]['itemTotal'] = $this->items[$id]['price'] * $this->items[$id]['quantity'];
            session()->put('cart', $this->items);
        } else if ($this->items[$id]['quantity'] < 1) {
            $this->items[$id]['quantity'] = 1;
        }

        $this->updateCart();
    }

    public function removeItem($id)
    {
        unset($this->items[$id]);
        session()->forget('cart');
        session()->put('cart', $this->items);
        $this->updateCart();
    }
}
