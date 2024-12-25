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
                    @foreach ($items as $item)
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
                                    <a href="#" wire:click.prevent="decrementQuantity({{ $item['id'] }})"
                                        class="color1 flex-c-m size7 bg8 eff2 decrement">
                                        <i class="fs-12 fa fa-minus" aria-hidden="true"></i>
                                    </a>
                                    <input wire:model="$item['quantity']" class="size8 m-text18 t-center" type="number" id="quantity"
                                        value="{{ $item['quantity'] }}" readonly />
                                    <a href="#" wire:click.prevent="incrementQuantity({{ $item['id'] }})" wire:click.prevent="incrementQuantity({{ $item['id'] }})"
                                        class="color1 flex-c-m size7 bg8 eff2 increment">
                                        <i class="fs-12 fa fa-plus" aria-hidden="true"></i>
                                    </a>
                                </div>
                            </td>
                            {{-- <td class="column-5 total">{{ $item['itemTotal'] }}</td> --}}
                            <td class="column-5 total">{{ $item['price'] * $item['quantity'] }}</td>
                            <td><a href="#" wire:click.prevent="removeItem({{ $item['id'] }})" class="column-6">Remove</a></td>
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
                    $<input type="number" wire:model="cartTotal" disabled>
                </span>
            </div>

            <div class="flex-w flex-sb bo10 p-t-15 p-b-20">
                <span class="s-text18 w-size19 w-full-sm">
                    Shipping:
                </span>
                <div class="w-size20 w-full-sm">
                    <p class="s-text8 p-b-23">
                        There are no shipping methods available. Please
                        double check your address, or contact us if you
                        need any help.
                    </p>
                    <span class="s-text19"> Calculate Shipping </span>
                    <div class="rs2-select2 rs3-select2 rs4-select2 bo4 of-hidden w-size21 m-t-8 m-b-12">
                        <select class="selection-2" name="country">
                            <option>Select a country...</option>
                            <option>US</option>
                            <option>UK</option>
                            <option>Japan</option>
                        </select>
                    </div>
                    <div class="size13 bo4 m-b-12">
                        <input class="sizefull s-text7 p-l-15 p-r-15" type="text" name="state"
                            placeholder="State /  country" />
                    </div>
                    <div class="size13 bo4 m-b-22">
                        <input class="sizefull s-text7 p-l-15 p-r-15" type="text" name="postcode"
                            placeholder="Postcode / Zip" />
                    </div>
                </div>
            </div>
            <div class="size15 trans-0-4">
                <button class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4">
                    Proceed to Checkout
                </button>
            </div>
        </div>
    </div>
</section>
