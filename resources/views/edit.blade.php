@extends('layout')

@section('content')

    <div class="container">
        @if($errors->count())
            <div class="alert alert-warning">{{ $errors->first() }}</div>
        @endif

        {!! Form::open(['url' => route('products.update', $product->id)]) !!}
        {{ method_field('PUT') }}
        <div class="form-group">
            {!! Form::label('name', 'Product name:') !!}
            {!! Form::text('name', old('name', $product->name), ['class' => $errors->has('name') ? 'form-control is-invalid' : 'form-control']) !!}
        </div>
        <div class="form-group">
            {!! Form::label('description', 'Product description:') !!}
            {!! Form::textarea('description', old('description', $product->description), ['class' => $errors->has('description') ? 'form-control is-invalid' : 'form-control']) !!}
        </div>
            <div class="prices">
                @if($product->prices->count())
                    @foreach($product->prices as $price)
                        <div class="form-row">
                            <div class="col-auto">
                                {!! Form::text('price[]', number_format($price->price, 2), ['class' => 'form-control']) !!}
                            </div>
                            <div class="col-auto">
                                <button class="btn btn-danger" data-action="remove-price"><i class="fa fa-minus"></i></button>
                            </div>
                        </div>
                    @endforeach
                @else
                    <div class="form-row">
                        <div class="col-auto">
                            {!! Form::text('price[]', '0.00', ['class' => 'form-control']) !!}
                        </div>
                        <div class="col-auto">
                            <button class="btn btn-danger" data-action="remove-price"><i class="fa fa-minus"></i></button>
                        </div>
                    </div>
                @endif
            </div>
            <div class="form-group">
                <button class="btn btn-success" data-action="add-price"><i class="fa fa-plus"></i> More Prices</button>
            </div>
        <div class="form-group mt-3">
            {!! Form::submit('Edit Product', ['class' => 'btn btn-success']) !!}
        </div>
        {!! Form::close() !!}
    </div>
@endsection