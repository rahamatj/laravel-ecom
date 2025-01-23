@extends('frontend.layout')

@section('content')
    <div id="product-detail" class="container bgwhite p-t-35 p-b-80">
        <div class="flex-w flex-sb">
            <div class="w-size13 p-t-30 respon5">
                <div class="wrap-slick3 flex-sb flex-w">
                    <div class="slick3">
                        <div
                            class="item-slick3"
                        >
                            <div class="wrap-pic-w">
                                <img
                                    src="{{ asset('/images/product-detail-01.jpg') }}"
                                    alt="IMG-PRODUCT"
                                />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="w-size14 p-t-30 respon5">
                <h4 class="product-detail-name m-text16 p-b-13">
                    {{ $item->product->name }}
                </h4>
                <span class="m-text17">$</span>
                <input class="m-text17" type="number" v-model="total" readonly />
                <p class="s-text8 p-t-10">
                    {{ $item['description'] }}
                </p>

                <div class="p-t-33 p-b-60">
                    <div class="flex-w p-t-10">
                        <div class="w-size16 flex-m flex-w">
                            <div
                                class="flex-w bo5 of-hidden m-r-22 m-t-10 m-b-10"
                            >
                                <button
                                    class="color1 flex-c-m size7 bg8 eff2"
                                    @click="decrement"
                                >
                                    <i
                                        class="fs-12 fa fa-minus"
                                        aria-hidden="true"
                                    ></i>
                                </button>
                                <input
                                    class="size8 m-text18 t-center num-product"
                                    type="number"
                                    value="{{ $item['quantity'] ?? 1 }}"
                                    v-model="quantity"
                                />
                                <button class="color1 flex-c-m size7 bg8 eff2"
                                    @click="increment"
                                >
                                    <i
                                        class="fs-12 fa fa-plus"
                                        aria-hidden="true"
                                    ></i>
                                </button>
                            </div>
                            <div
                                class="size9 trans-0-4 m-t-10 m-b-10"
                            >
                                <button
                                    @click="addToCart"
                                    class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4"
                                    style="cursor: pointer;"
                                >
                                    Add to Cart
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    @if(!$relatedProducts->isEmpty())
        <section class="relateproduct bgwhite p-t-45 p-b-138">
        <div class="container">
            <div class="sec-title p-b-60">
                <h3 class="m-text5 t-center">Related Products</h3>
            </div>

            <div class="wrap-slick2">
                <div class="slick2">
                    @foreach($relatedProducts as $relatedProduct)
                        <div class="item-slick2 p-l-15 p-r-15">
                        <div class="block2">
                            <div
                                class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew"
                            >
                                <img
                                    src="{{ asset($relatedProduct->image) }}"
                                    alt="IMG-PRODUCT"
                                />

                                <div class="block2-overlay trans-0-4">
                                    <div
                                        class="block2-btn-addcart w-size1 trans-0-4"
                                    >
                                        <input id="product-id" class="product-id" type="hidden" name="product_id" value="{{ $relatedProduct->id }}">
                                        <button
                                            class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4"
                                        >
                                            Add to Cart
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="block2-txt p-t-20">
                                <a
                                    href="{{ route('product', ['id' => $relatedProduct->id]) }}"
                                    class="block2-name dis-block s-text3 p-b-5"
                                >
                                    {{ $relatedProduct->name }}
                                </a>
                                <span class="block2-price m-text6 p-r-5">
                                    {{ $relatedProduct->price }}
                                </span>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </section>
    @endif

    <script type="module" setup>
        const app = Vue.createApp({
            data() {
                return {
                    item: @json($item),
                    price: {{ $item->product->price }},
                    quantity: {{ $item->quantity }},
                    id: {{ $item->product->id  }}
                }
            },
            computed: {
              total() {
                  return this.price * this.quantity
              }
            },
            methods: {
                increment() {
                    this.quantity++

                    const url = window.location.origin + '/cart/increment/' + this.id

                    fetch(url)
                        .then(res => res.json())
                        .then(data => {
                            console.log(data)
                        })
                        .catch(err => {
                            console.log(err)
                        })
                },

                decrement() {
                    if (this.quantity > 1) {
                        this.quantity--

                        const url = window.location.origin + '/cart/decrement/' + this.id

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

                addToCart() {
                    const url = window.location.origin + '/cart/add'

                    fetch(url, {
                        headers: {
                            'Accept': 'application/json',
                            'Content-Type': 'application/json',
                            "X-Requested-With": "XMLHttpRequest",
                            "X-CSRF-Token": "{{ csrf_token() }}"
                        },
                        method: "POST"
                    })
                    .then(res => {
                        console.log("res")
                        return res.json()
                    })
                    .then(data => {
                        console.log(data)
                    })
                    .catch(err => {
                        console.log(err)
                    })
                }
            }
        })

        app.mount('#product-detail')
    </script>
@endsection
