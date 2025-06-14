<!DOCTYPE html>
<html lang="en">

<head>
    <title>Home</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="icon" type="image/png" href="{{ asset('images/icons/favicon.png') }}" />

    <link rel="stylesheet" type="text/css" href="{{ asset('vendor/bootstrap/css/bootstrap.min.css') }}">

    <link rel="stylesheet" type="text/css" href="{{ asset('fonts/font-awesome-4.7.0/css/font-awesome.min.css') }}">

    <link rel="stylesheet" type="text/css" href="{{ asset('fonts/themify/themify-icons.css') }}">

    <link rel="stylesheet" type="text/css" href="{{ asset('fonts/Linearicons-Free-v1.0.0/icon-font.min.css') }}">

    <link rel="stylesheet" type="text/css" href="{{ asset('fonts/elegant-font/html-css/style.css') }}">

    <link rel="stylesheet" type="text/css" href="{{ asset('vendor/animate/animate.css') }}">

    <link rel="stylesheet" type="text/css" href="{{ asset('vendor/css-hamburgers/hamburgers.min.css') }}">

    <link rel="stylesheet" type="text/css" href="{{ asset('vendor/animsition/css/animsition.min.css') }}">

    <link rel="stylesheet" type="text/css" href="{{ asset('vendor/select2/select2.min.css') }}">

    <link rel="stylesheet" type="text/css" href="{{ asset('vendor/daterangepicker/daterangepicker.css') }}">

    <link rel="stylesheet" type="text/css" href="{{ asset('vendor/slick/slick.css') }}">

    <link rel="stylesheet" type="text/css" href="{{ asset('vendor/lightbox2/css/lightbox.min.css') }}">

    <link rel="stylesheet" type="text/css" href="{{ asset('css/util.css') }}">

    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://unpkg.com/vue@3/dist/vue.global.js"></script>

    <link rel="stylesheet" type="text/css" href="{{ asset('css/main.css') }}">
</head>

<body class="animsition">

    <header class="header1">

        <div class="container-menu-header">
            <div class="topbar">
                <div class="topbar-social">
                    <a href="#" class="topbar-social-item fa fa-facebook"></a>
                    <a href="#" class="topbar-social-item fa fa-instagram"></a>
                    <a href="#" class="topbar-social-item fa fa-pinterest-p"></a>
                    <a href="#" class="topbar-social-item fa fa-snapchat-ghost"></a>
                    <a href="#" class="topbar-social-item fa fa-youtube-play"></a>
                </div>
                <span class="topbar-child1">
                    Free shipping for standard order over $100
                </span>
                <div class="topbar-child2">
                    <div class="topbar-language rs1-select2">
                        <select class="selection-1" name="time">
                            <option>USD</option>
                            <option>EUR</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="wrap_header">

                <a href="{{ route('home') }}" class="logo">
                    <img src="{{ asset('images/icons/logo.png') }}" alt="IMG-LOGO">
                </a>

                <div class="wrap_menu">
                    <nav class="menu">
                        <ul class="main_menu">
                            <li>
                                <a href="{{ route('home') }}">Home</a>
                            </li>
                            <li>
                                <a href="{{ route('shop') }}">Shop</a>
                            </li>
                            <li>
                                <a href="{{ route('cart') }}">Cart</a>
                            </li>
                            <li>
                                <a href="blog.html">Blog</a>
                            </li>
                            <li>
                                <a href="about.html">About</a>
                            </li>
                            <li>
                                <a href="contact.html">Contact</a>
                            </li>
                        </ul>
                    </nav>
                </div>

                <div class="header-icons">
                    <a href="#" class="header-wrapicon1 dis-block">
                        <img src="{{ asset('images/icons/icon-header-01.png') }}" class="header-icon1" alt="ICON">
                    </a>
                    <span class="linedivide1"></span>
                    <div class="header-wrapicon2">
                        <img src="{{ asset('images/icons/icon-header-02.png') }}"
                            class="header-icon1 js-show-header-dropdown" alt="ICON">
                        <span class="header-icons-noti">0</span>

                        <div class="header-cart header-dropdown">
                            <ul class="header-cart-wrapitem">
                                <li class="header-cart-item">
                                    <div class="header-cart-item-img">
                                        <img src="images/item-cart-01.jpg" alt="IMG">
                                    </div>
                                    <div class="header-cart-item-txt">
                                        <a href="#" class="header-cart-item-name">
                                            White Shirt With Pleat Detail Back
                                        </a>
                                        <span class="header-cart-item-info">
                                            1 x $19.00
                                        </span>
                                    </div>
                                </li>
                                <li class="header-cart-item">
                                    <div class="header-cart-item-img">
                                        <img src="{{ asset('images/item-cart-02.jpg') }}" alt="IMG">
                                    </div>
                                    <div class="header-cart-item-txt">
                                        <a href="#" class="header-cart-item-name">
                                            Converse All Star Hi Black Canvas
                                        </a>
                                        <span class="header-cart-item-info">
                                            1 x $39.00
                                        </span>
                                    </div>
                                </li>
                                <li class="header-cart-item">
                                    <div class="header-cart-item-img">
                                        <img src="{{ asset('images/item-cart-03.jpg') }}" alt="IMG">
                                    </div>
                                    <div class="header-cart-item-txt">
                                        <a href="#" class="header-cart-item-name">
                                            Nixon Porter Leather Watch In Tan
                                        </a>
                                        <span class="header-cart-item-info">
                                            1 x $17.00
                                        </span>
                                    </div>
                                </li>
                            </ul>
                            <div class="header-cart-total">
                                Total: $75.00
                            </div>
                            <div class="header-cart-buttons">
                                <div class="header-cart-wrapbtn">

                                    <a href="{{ route('cart') }}" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
                                        View Cart
                                    </a>
                                </div>
                                <div class="header-cart-wrapbtn">

                                    <a href="#" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
                                        Check Out
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="wrap_header_mobile">

            <a href="index.html" class="logo-mobile">
                <img src="{{ asset('images/icons/logo.png') }}" alt="IMG-LOGO">
            </a>

            <div class="btn-show-menu">

                <div class="header-icons-mobile">
                    <a href="#" class="header-wrapicon1 dis-block">
                        <img src="{{ asset('images/icons/icon-header-01.png') }}" class="header-icon1"
                            alt="ICON">
                    </a>
                    <span class="linedivide2"></span>
                    <div class="header-wrapicon2">
                        <img src="{{ asset('images/icons/icon-header-02.png') }}"
                            class="header-icon1 js-show-header-dropdown" alt="ICON">
                        <span class="header-icons-noti">0</span>

                        <div class="header-cart header-dropdown">
                            <ul class="header-cart-wrapitem">
                                <li class="header-cart-item">
                                    <div class="header-cart-item-img">
                                        <img src="{{ asset('images/item-cart-01.jpg') }}" alt="IMG">
                                    </div>
                                    <div class="header-cart-item-txt">
                                        <a href="#" class="header-cart-item-name">
                                            White Shirt With Pleat Detail Back
                                        </a>
                                        <span class="header-cart-item-info">
                                            1 x $19.00
                                        </span>
                                    </div>
                                </li>
                                <li class="header-cart-item">
                                    <div class="header-cart-item-img">
                                        <img src="{{ asset('images/item-cart-02.jpg') }}" alt="IMG">
                                    </div>
                                    <div class="header-cart-item-txt">
                                        <a href="#" class="header-cart-item-name">
                                            Converse All Star Hi Black Canvas
                                        </a>
                                        <span class="header-cart-item-info">
                                            1 x $39.00
                                        </span>
                                    </div>
                                </li>
                                <li class="header-cart-item">
                                    <div class="header-cart-item-img">
                                        <img src="{{ asset('images/item-cart-03.jpg') }}" alt="IMG">
                                    </div>
                                    <div class="header-cart-item-txt">
                                        <a href="#" class="header-cart-item-name">
                                            Nixon Porter Leather Watch In Tan
                                        </a>
                                        <span class="header-cart-item-info">
                                            1 x $17.00
                                        </span>
                                    </div>
                                </li>
                            </ul>
                            <div class="header-cart-total">
                                Total: $75.00
                            </div>
                            <div class="header-cart-buttons">
                                <div class="header-cart-wrapbtn">

                                    <a href="{{ route('cart') }}" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
                                        View Cart
                                    </a>
                                </div>
                                <div class="header-cart-wrapbtn">

                                    <a href="#" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
                                        Check Out
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="btn-show-menu-mobile hamburger hamburger--squeeze">
                    <span class="hamburger-box">
                        <span class="hamburger-inner"></span>
                    </span>
                </div>
            </div>
        </div>

        <div class="wrap-side-menu">
            <nav class="side-menu">
                <ul class="main-menu">
                    <li class="item-topbar-mobile p-l-20 p-t-8 p-b-8">
                        <span class="topbar-child1">
                            Free shipping for standard order over $100
                        </span>
                    </li>
                    <li class="item-topbar-mobile p-l-20 p-t-8 p-b-8">
                        <div class="topbar-child2-mobile">
                            <div class="topbar-language rs1-select2">
                                <select class="selection-1" name="time">
                                    <option>USD</option>
                                    <option>EUR</option>
                                </select>
                            </div>
                        </div>
                    </li>
                    <li class="item-topbar-mobile p-l-10">
                        <div class="topbar-social-mobile">
                            <a href="#" class="topbar-social-item fa fa-facebook"></a>
                            <a href="#" class="topbar-social-item fa fa-instagram"></a>
                            <a href="#" class="topbar-social-item fa fa-pinterest-p"></a>
                            <a href="#" class="topbar-social-item fa fa-snapchat-ghost"></a>
                            <a href="#" class="topbar-social-item fa fa-youtube-play"></a>
                        </div>
                    </li>
                    <li class="item-menu-mobile">
                        <a href="index.html">Home</a>
                        <ul class="sub-menu">
                            <li><a href="index.html">Homepage V1</a></li>
                            <li><a href="home-02.html">Homepage V2</a></li>
                            <li><a href="home-03.html">Homepage V3</a></li>
                        </ul>
                        <i class="arrow-main-menu fa fa-angle-right" aria-hidden="true"></i>
                    </li>
                    <li class="item-menu-mobile">
                        <a href="{{ route('shop') }}">Shop</a>
                    </li>
                    <li class="item-menu-mobile">
                        <a href="{{ route('cart') }}">Cart</a>
                    </li>
                    <li class="item-menu-mobile">
                        <a href="blog.html">Blog</a>
                    </li>
                    <li class="item-menu-mobile">
                        <a href="about.html">About</a>
                    </li>
                    <li class="item-menu-mobile">
                        <a href="contact.html">Contact</a>
                    </li>
                </ul>
            </nav>
        </div>
    </header>

    @session('error')
        <div class="p-4 mb-4 text-sm text-red-800 rounded-lg bg-red-50 text-center" role="alert">
            <span class="font-medium"> {{ session('error') }} </span>
        </div>
    @endsession

    @yield('content')

    <footer class="bg6 p-t-45 p-b-43 p-l-45 p-r-45">
        <div class="flex-w p-b-90">
            <div class="w-size6 p-t-30 p-l-15 p-r-15 respon3">
                <h4 class="s-text12 p-b-30">
                    GET IN TOUCH
                </h4>
                <div>
                    <p class="s-text7 w-size27">
                        Any questions? Let us know in store at 8th floor, 379 Hudson St, New York, NY 10018 or call us
                        on (+1) 96 716 6879
                    </p>
                    <div class="flex-m p-t-30">
                        <a href="#" class="fs-18 color1 p-r-20 fa fa-facebook"></a>
                        <a href="#" class="fs-18 color1 p-r-20 fa fa-instagram"></a>
                        <a href="#" class="fs-18 color1 p-r-20 fa fa-pinterest-p"></a>
                        <a href="#" class="fs-18 color1 p-r-20 fa fa-snapchat-ghost"></a>
                        <a href="#" class="fs-18 color1 p-r-20 fa fa-youtube-play"></a>
                    </div>
                </div>
            </div>
            <div class="w-size7 p-t-30 p-l-15 p-r-15 respon4">
                <h4 class="s-text12 p-b-30">
                    Categories
                </h4>
                <ul>
                    <li class="p-b-9">
                        <a href="#" class="s-text7">
                            Men
                        </a>
                    </li>
                    <li class="p-b-9">
                        <a href="#" class="s-text7">
                            Women
                        </a>
                    </li>
                    <li class="p-b-9">
                        <a href="#" class="s-text7">
                            Dresses
                        </a>
                    </li>
                    <li class="p-b-9">
                        <a href="#" class="s-text7">
                            Sunglasses
                        </a>
                    </li>
                </ul>
            </div>
            <div class="w-size7 p-t-30 p-l-15 p-r-15 respon4">
                <h4 class="s-text12 p-b-30">
                    Links
                </h4>
                <ul>
                    <li class="p-b-9">
                        <a href="#" class="s-text7">
                            Search
                        </a>
                    </li>
                    <li class="p-b-9">
                        <a href="#" class="s-text7">
                            About Us
                        </a>
                    </li>
                    <li class="p-b-9">
                        <a href="#" class="s-text7">
                            Contact Us
                        </a>
                    </li>
                    <li class="p-b-9">
                        <a href="#" class="s-text7">
                            Returns
                        </a>
                    </li>
                </ul>
            </div>
            <div class="w-size7 p-t-30 p-l-15 p-r-15 respon4">
                <h4 class="s-text12 p-b-30">
                    Help
                </h4>
                <ul>
                    <li class="p-b-9">
                        <a href="#" class="s-text7">
                            Track Order
                        </a>
                    </li>
                    <li class="p-b-9">
                        <a href="#" class="s-text7">
                            Returns
                        </a>
                    </li>
                    <li class="p-b-9">
                        <a href="#" class="s-text7">
                            Shipping
                        </a>
                    </li>
                    <li class="p-b-9">
                        <a href="#" class="s-text7">
                            FAQs
                        </a>
                    </li>
                </ul>
            </div>
            <div class="w-size8 p-t-30 p-l-15 p-r-15 respon3">
                <h4 class="s-text12 p-b-30">
                    Newsletter
                </h4>
                <form>
                    <div class="effect1 w-size9">
                        <input class="s-text7 bg6 w-full p-b-5" type="text" name="email"
                            placeholder="email@example.com">
                        <span class="effect1-line"></span>
                    </div>
                    <div class="w-size2 p-t-20">

                        <button class="flex-c-m size2 bg4 bo-rad-23 hov1 m-text3 trans-0-4">
                            Subscribe
                        </button>
                    </div>
                </form>
            </div>
        </div>
        <div class="t-center p-l-15 p-r-15">
            <a href="#">
                <img class="h-size2" src="{{ asset('images/icons/paypal.png') }}" alt="IMG-PAYPAL">
            </a>
            <a href="#">
                <img class="h-size2" src="{{ asset('images/icons/visa.png') }}" alt="IMG-VISA">
            </a>
            <a href="#">
                <img class="h-size2" src="{{ asset('images/icons/mastercard.png') }}" alt="IMG-MASTERCARD">
            </a>
            <a href="#">
                <img class="h-size2" src="{{ asset('images/icons/express.png') }}" alt="IMG-EXPRESS">
            </a>
            <a href="#">
                <img class="h-size2" src="{{ asset('images/icons/discover.png') }}" alt="IMG-DISCOVER">
            </a>
            <div class="t-center s-text8 p-t-20">
                Copyright © 2017 Colorlib. All rights reserved.
            </div>
        </div>
    </footer>

    <div class="btn-back-to-top bg0-hov" id="myBtn">
        <span class="symbol-btn-back-to-top">
            <i class="fa fa-angle-double-up" aria-hidden="true"></i>
        </span>
    </div>

    <div id="dropDownSelect1"></div>

    <script type="text/javascript" src="{{ asset('vendor/jquery/jquery-3.2.1.min.js') }}"></script>

    <script type="text/javascript" src="{{ asset('vendor/animsition/js/animsition.min.js') }}"></script>

    <script type="text/javascript" src="{{ asset('vendor/bootstrap/js/popper.js') }}"></script>
    <script type="text/javascript" src="{{ asset('vendor/bootstrap/js/bootstrap.min.js') }}"></script>

    <script type="text/javascript" src="{{ asset('vendor/select2/select2.min.js') }}"></script>
    <script type="text/javascript">
        $(".selection-1").select2({
            minimumResultsForSearch: 20,
            dropdownParent: $('#dropDownSelect1')
        });
    </script>

    <script type="text/javascript" src="{{ asset('vendor/slick/slick.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('js/slick-custom.js') }}"></script>

    <script type="text/javascript" src="{{ asset('vendor/countdowntime/countdowntime.js') }}"></script>

    <script type="text/javascript" src="{{ asset('vendor/lightbox2/js/lightbox.min.js') }}"></script>

    <script type="text/javascript" src="{{ asset('vendor/sweetalert/sweetalert.min.js') }}"></script>
    <script type="text/javascript">
        $('.block2-btn-addcart').each(function() {
            let nameProduct = $(this).parent().parent().parent().find('.block2-name').html()
            let productId = $(this).parent().parent().parent().find('.product-id').val()

            $(this).on('click', function() {
                $.ajax({
                    url: "{{ route('cart.add') }}",
                    method: 'POST',
                    data: {
                        '_token': "{{ csrf_token() }}",
                        'product_id': productId,
                        'quantity': 1
                    },
                    success: function(response) {
                        swal(nameProduct, "is added to cart !", "success");
                    }
                });
            });
        });

        // $('.block2-btn-addcart').first(function() {
        //     var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
        //     var productId = $(this).parent().parent().parent().find('#product-id').val();
        //     console.log("second");

        //     $(this).on('click', function() {
        //         $.ajax({
        //             url: window.location.href + '/cart/add',
        //             method: 'POST',
        //             data: {
        //                 '_token': '{{ csrf_token() }}',
        //                 'product_id': productId,
        //             },
        //             success: function(response) {
        //                 console.log("second", response);
        //                 swal(nameProduct, "is added to the cart !", "success");
        //             }
        //         })
        //     });
        // });

        $('.block2-btn-addwishlist').each(function() {
            var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
            $(this).on('click', function() {
                swal(nameProduct, "is added to wishlist !", "success");
            });
        });
    </script>

    <script src="{{ asset('js/main.js') }}"></script>
</body>

</html>
