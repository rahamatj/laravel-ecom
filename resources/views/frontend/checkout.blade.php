@extends('frontend.layout')

@section('content')
    @session('error')
        <div class="p-4 mb-4 text-sm text-red-800 rounded-lg bg-red-50 text-center" role="alert">
            <span class="font-medium"> {{ session('error') }} </span>
        </div>
    @endsession

    @session('success')
        <div class="p-4 mb-4 text-sm text-green-800 rounded-lg bg-green-50 text-center" role="alert">
            <span class="font-medium"> {{ session('success') }} </span>
        </div>
    @endsession
    
    <section id="checkout" class="cart bgwhite p-t-70 p-b-100">
        <div class="container">
            <form action="{{ route('order') }}" method="POST">
                @csrf
                <div class="container-table-cart pos-relative">
                    <div class="wrap-table-shopping-cart bgwhite">
                        <table class="table-shopping-cart">
                            <tr class="table-head">
                                <th class="column-1"></th>
                                <th class="column-2">Product</th>
                                <th class="column-3">Price (BDT)</th>
                                <th class="column-4 p-l-70">Quantity</th>
                                <th class="column-5">Total (BDT)</th>
                            </tr>
                            @foreach ($items as $item)
                                <input type="hidden" name="cart_items[{{ $item['id'] }}][id]" value="{{ $item['id'] }}">
                                <tr class="table-row">
                                    <td class="column-1">
                                        <div class="cart-img-product b-rad-4 o-f-hidden">
                                            <img src="{{ asset($item['image']) }}" alt="IMG-PRODUCT" />
                                        </div>
                                    </td>
                                    <td class="column-2 name">{{ $item['name'] }}</td>
                                    <td class="column-3 price">{{ $item['price'] }}</td>
                                    <td class="column-4">
                                        <div class="flex-w bo5 of-hidden w-size17">

                                            <input class="size8 m-text18 t-center" type="number" id="quantity"
                                                value="{{ $item['quantity'] }}" readonly />

                                        </div>
                                    </td>
                                    <td class="column-5 total">{{ $item['price'] * $item['quantity'] }}</td>
                                </tr>
                            @endforeach
                        </table>
                    </div>
                </div>

                <div class="bo9 w-size18 p-l-40 p-r-40 p-t-30 p-b-38 m-t-30 m-r-0 m-l-auto p-lr-15-sm">
                    <h5 class="m-text20 p-b-24">Cart Totals</h5>

                    <div class="flex-w flex-sb-m p-b-12">
                        <span class="s-text18 w-size19 w-full-sm">
                            Subtotal:
                        </span>
                        <span class="m-text21 w-size20 w-full-sm">
                            $<input type="number" :value="cartTotal" disabled>
                        </span>
                    </div>

                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    <div>
                        <label for="name" class="block mb-2 text-sm font-medium text-gray-900">Name</label>
                        <input type="text" id="name" name="name"
                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                            placeholder="Name" required />
                    </div>

                    <div>
                        <label for="email" class="block mb-2 text-sm font-medium text-gray-900">Email</label>
                        <input type="email" id="email"
                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                            placeholder="Email" required name="email" />
                    </div>

                    <div>
                        <label for="phone" class="block mb-2 text-sm font-medium text-gray-900">Phone</label>
                        <input type="text" id="phone"
                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                            placeholder="Phone" required name="phone" />
                    </div>

                    <div>
                        <label for="address" class="block mb-2 text-sm font-medium text-gray-900">Address</label>
                        <textarea id="address"
                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                            placeholder="Address" required name="address"></textarea>
                    </div>

                    <div class="size15 trans-0-4">
                        <button :submit="submit" type="submit" href="javascript:void(0)"
                            class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4" style="margin-top: 30px;">
                            Order
                        </button>
                    </div>
            </form>
        </div>
        </form>
    </section>

    <script type="module" setup>
        const app = Vue.createApp({
            data() {
                return {
                    items: @json($items),
                }
            },

            computed: {
                cartTotal() {
                    let total = 0

                    Object.values(this.items).forEach(item => {
                        total += this.total(item)
                    })

                    return total
                },
            },

            methods: {
                increment(item) {
                    item.quantity++

                    const url = window.location.origin + '/cart/increment/' + item.id

                    fetch(url)
                        .then(res => res.json())
                        .then(data => {
                            console.log(data)
                        })
                        .catch(err => {
                            console.log(err)
                        })
                },

                decrement(item) {
                    if (item.quantity > 1) {
                        item.quantity--

                        const url = window.location.origin + '/cart/decrement/' + item.id

                        fetch(url)
                            .then(res => res.json())
                            .then(data => {
                                console.log(data)
                            })
                            .catch(err => {
                                console.log(err)
                            })
                    }
                },

                total(item) {
                    return item.price * item.quantity
                },

                remove(item) {
                    const url = window.location.origin + '/cart/remove/' + item.id

                    delete this.items[item.id]

                    fetch(url)
                        .then(res => res.json())
                        .then(data => {
                            swal({
                                title: "Success",
                                text: "Item removed from cart",
                                icon: "success",
                                button: "OK"
                            })
                        })
                        .catch(err => {
                            console.log(err)
                        })
                },

                submit() {
                    console.log('Submitting order...')

                    fetch(url)
                        .then(res => res.json())
                        .then(data => {
                            {{-- console.log(data) --}}
                            {{-- swal({
                                title: "Success",
                                text: "Order placed successfully",
                                icon: "success",
                                button: "OK"
                            }).then(() => {
                                window.location.href = '/orders'
                            }) --}}
                        })
                        .catch(err => {
                            console.error(err)
                        })

                    const name = document.getElementById('name').value
                    const email = document.getElementById('email').value
                    const phone = document.getElementById('phone').value
                    const address = document.getElementById('address').value

                    if (!name || !email || !phone || !address) {
                        swal({
                            title: "Error",
                            text: "Please fill all the fields",
                            icon: "error",
                            button: "OK"
                        })
                        return false
                    }

                    return true

                    if (this.items.length === 0) {
                        swal({
                            title: "Error",
                            text: "Your cart is empty",
                            icon: "error",
                            button: "OK"
                        })
                        return false
                    }

                    return true
                }
            }
        })

        app.mount('#checkout')
    </script>
@endsection
