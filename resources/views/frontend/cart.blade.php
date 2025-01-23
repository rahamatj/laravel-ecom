@extends('frontend.layout')

@section('content')
    <section id="cart" class="cart bgwhite p-t-70 p-b-100">
        <div class="container">
            <div class="container-table-cart pos-relative">
                <div class="wrap-table-shopping-cart bgwhite">
                    <table class="table-shopping-cart">
                        <tr class="table-head">
                            <th class="column-1"></th>
                            <th class="column-2">Product</th>
                            <th class="column-3">Price (BDT)</th>
                            <th class="column-4 p-l-70">Quantity</th>
                            <th class="column-5">Total (BDT)</th>
                            <th class="column-6">Action</th>
                        </tr>
                        <tr v-for="item in items" :key="item.id" class="table-row">
                            <td class="column-1">
                                <div class="cart-img-product b-rad-4 o-f-hidden">
                                    <img :src="item.image" alt="IMG-PRODUCT" />
                                </div>
                            </td>
                            <td class="column-2 name">@{{ item.name }}</td>
                            <td class="column-3 price">@{{ item.price }}</td>
                            <td class="column-4">
                                <div class="flex-w bo5 of-hidden w-size17">
                                    <a href="javascript:void(0)" @click="decrement(item)"
                                        class="color1 flex-c-m size7 bg8 eff2 decrement">
                                        <i class="fs-12 fa fa-minus" aria-hidden="true"></i>
                                    </a>
                                    <input v-model="item.quantity" class="size8 m-text18 t-center" type="number"
                                        id="quantity" readonly />
                                    <a href="javascript:void(0)" @click="increment(item)"
                                        class="color1 flex-c-m size7 bg8 eff2 increment">
                                        <i class="fs-12 fa fa-plus" aria-hidden="true"></i>
                                    </a>
                                </div>
                            </td>
                            <td class="column-5 total">@{{ total(item) }}</td>
                            <td><a href="javascript:void(0)" class="column-6" @click="remove(item)">Remove</a></td>
                        </tr>
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
                        $<input type="number" disabled :value="cartTotal()">
                    </span>
                </div>

                <div class="size15 trans-0-4">
                    <a href="{{ route('checkout') }}" class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4">
                        Proceed to Checkout
                    </a>
                </div>
            </div>
        </div>
    </section>

    <script type="module" setup>
        const app = Vue.createApp({
            data() {
                return {
                    items: @json($items),
                }
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

                cartTotal() {
                    let total = 0

                    Object.values(this.items).forEach(item => {
                        total += this.total(item)
                    })

                    return total
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
                }
            }
        })

        app.mount('#cart')
    </script>
@endsection
