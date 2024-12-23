@extends('admin.layout')

@section('title', 'Categories')

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
                                            <th>Actions</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        @foreach ($categories as $category)
                                            <tr>
                                                <td>{{ $category->id }}</td>
                                                <td>{{ $category->name }}</td>
                                                <td>
                                                    <a href="{{ route('admin.categories.edit', $category->id) }}"
                                                        class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i> Edit</a>
                                                    <a href="{{ route('admin.categories.delete', $category->id) }}"
                                                        onclick="if(confirm('Are you sure?')){event.preventDefault();document.getElementById('delete-form-{{ $category->id }}').submit();}"
                                                        class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i>
                                                        Delete</a>
                                                    <form action="{{ route('admin.categories.delete', $category->id) }}"
                                                        method="POST" id="delete-form-{{ $category->id }}"
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
