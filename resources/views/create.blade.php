@extends('layout')

@section('content')

    <div class="container">
        @if($errors->count())
            <div class="alert alert-warning">{{ $errors->first() }}</div>
        @endif

        {!! Form::open(['url' => route('products.store')]) !!}
        {{ method_field('POST') }}
        <div class="form-group">
            {!! Form::label('name', 'Product name:') !!}
            {!! Form::text('name', old('name'), ['class' => $errors->has('name') ? 'form-control is-invalid' : 'form-control']) !!}
        </div>
        <div class="form-group">
            {!! Form::label('description', 'Product description:') !!}
            {!! Form::textarea('description', old('description'), ['class' => $errors->has('description') ? 'form-control is-invalid' : 'form-control']) !!}
        </div>
            <div class="prices">
                <div class="form-row">
                    <div class="col-auto">
                        {!! Form::text('price[]', '0.00', ['class' => 'form-control']) !!}
                    </div>
                    <div class="col-auto">
                        <button class="btn btn-danger" data-action="remove-price"><i class="fa fa-minus"></i></button>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <button class="btn btn-success" data-action="add-price"><i class="fa fa-plus"></i> More Prices</button>
            </div>
        <div class="form-group mt-3">
            {!! Form::submit('Add Product', ['class' => 'btn btn-success']) !!}
        </div>
        {!! Form::close() !!}
    </div>
@endsection