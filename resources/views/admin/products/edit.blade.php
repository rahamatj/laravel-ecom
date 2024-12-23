@extends('admin.layout')

@section('title', 'Create Products')

@section('content')
    <div class="right_col" role="main">
        <div class="x_panel">
            <div class="x_title">
                <h2>Products <small>Edit</small></h2>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <br />
                <form id="demo-form2" action="{{ route('admin.products.update', ['id' => $product->id]) }}" method="POST"
                    class="form-horizontal form-label-left" enctype="multipart/form-data">
                    @csrf
                    @method('PATCH')

                    <div class="item form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Category</label>
                        <div class="col-md-6 col-sm-6">
                            <select class="form-control @error('title') is-invalid @enderror" name="category_id">
                                <option>Choose option</option>
                                @foreach ($categories as $category)
                                    <option value="{{ $category->id }}" {{ $category->id == $product->category_id ? 'selected' : '' }}>{{ $category->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Name <span
                                class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6">
                            <input type="text" name="name" required="required"
                                class="form-control @error('title') is-invalid @enderror" value="{{ $product->name }}">
                        </div>

                        @error('name')
                            <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Image</label>
                        <div class="col-md-6 col-sm-6">
                            <input type="file" name="image" class="form-control @error('image') is-invalid @enderror">
                        </div>

                        @error('image')
                            <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align"> Description <span
                                class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                            <textarea id="summernote" name="description" required="required"
                                class="form-control @error('image') is-invalid @enderror">
                                {{ $product->description }}
                            </textarea>
                        </div>

                        @error('description')
                            <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Price <span
                                class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6">
                            <input type="number" name="price" required="required"
                                class="form-control @error('price') is-invalid @enderror" value="{{ $product->price }}">
                        </div>

                        @error('price')
                            <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Is Featured <span
                                class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6">
                            <label>
                                <input type="hidden" class="js-switch" name="is_featured" value="0" />
                                <input type="checkbox" class="js-switch" name="is_featured" value="1" {{ $product->is_featured == 1 ? 'checked' : '' }} />
                            </label>
                        </div>

                        @error('is_featured')
                            <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="ln_solid"></div>
                    <div class="item form-group">
                        <div class="col-md-6 col-sm-6 offset-md-3">
                            <button type="submit" class="btn btn-success">Submit</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection
