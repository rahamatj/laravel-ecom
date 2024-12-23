@extends('admin.layout')

@section('title', 'Products')

@section('content')
    <div class="right_col" role="main">
        <div class="col-md-12 col-sm-12 ">
            <div class="x_panel">
                <div class="x_title">
                    <h2>Categories <small>All</small></h2>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card-box table-responsive">
                                <table id="datatable" class="table table-striped table-bordered" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Name</th>
                                            <th>Image</th>
                                            <th>Price</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        @foreach ($products as $product)
                                            <tr>
                                                <td>{{ $product->id }}</td>
                                                <td>{{ $product->name }}</td>
                                                <td>
                                                    <img src="{{ asset($product->image) }}" width="100px">
                                                </td>
                                                <td>{{ $product->price }}</td>
                                                <td>
                                                    <a href="{{ route('admin.products.edit', $product->id) }}"
                                                        class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i> Edit</a>
                                                    <a href="{{ route('admin.products.delete', $product->id) }}"
                                                        onclick="if(confirm('Are you sure?')){event.preventDefault();document.getElementById('delete-form-{{ $product->id }}').submit();}"
                                                        class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i>
                                                        Delete</a>
                                                    <form action="{{ route('admin.products.delete', $product->id) }}"
                                                        method="POST" id="delete-form-{{ $product->id }}"
                                                        style="display: none;">@csrf @method('DELETE')</form>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
