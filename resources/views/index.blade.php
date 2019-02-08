@extends('layout')

@section('content')
    <div class="container">

        @if(Session::has('success'))
            <div class="alert alert-info">{{ Session::get('success') }}</div>
        @endif

        @if($products->count())
        <table class="table table-bordered table-striped">
            <thead>
            <tr>
                <th>Name</th>
                <th>Description</th>
                <th>Price(s)</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            @foreach($products as $product)
                <tr>
                    <td>
                        {{ $product->name }}
                    </td>
                    <td>
                        {{ str_limit($product->description, 70) }}
                    </td>
                    <td>
                        @if($product->prices)
                        @foreach($product->prices as $price)
                        <span class="badge badge-secondary">{{ number_format($price->price, 2) }}</span>
                        @endforeach
                        @endif
                    </td>
                    <td>
                        <a href="{{ route('products.edit', $product->id) }}" class="btn btn-sm btn-success"><i class="fa fa-pencil"></i></a>
                        <a href="#"
                           data-action="product-remove"
                           data-href="{{ route('products.destroy', $product->id) }}"
                           data-redirect="{{ route('products.index') }}"
                           class="btn btn-sm btn-danger"><i class="fa fa-trash"></i></a>
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
        @else
            <div class="alert alert-info">Sorry, we don't have any products yet.</div>
        @endif

        {!! $products->render() !!}
    </div>
@endsection