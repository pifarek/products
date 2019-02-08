<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\Price;

class ProductsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Product::orderBy('id', 'desc')->paginate(20);

        return view('index', ['products' => $products]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => ['required'],
            'description' => ['required'],
            'price.*' => ['numeric']
        ]);

        $product = new Product;
        $product->name = $request->get('name');
        $product->description = $request->get('description');
        $product->save();

        if ($request->get('price')) {
            foreach ($request->get('price') as $priceValue) {
                if ($priceValue > 0) {
                    $price = new Price;
                    $price->product_id = $product->id;
                    $price->price = $priceValue;
                    $price->save();
                }
            }
        }

        return redirect()->route('products.index')->with('success', 'A new product has been successfully added.');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $product = Product::find($id);
        if(!$product) {
            return redirect()->route('products.index');
        }

        return view('edit', ['product' => $product]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $product = Product::find($id);
        if(!$product) {
            return redirect()->route('products.index');
        }

        $request->validate([
            'name' => ['required'],
            'description' => ['required'],
            'price.*' => ['numeric']
        ]);

        $product->name = $request->get('name');
        $product->description = $request->get('description');
        $product->save();

        Price::where('product_id', $product->id)->delete();

        if ($request->get('price')) {
            foreach ($request->get('price') as $priceValue) {
                if ($priceValue > 0) {
                    $price = new Price;
                    $price->product_id = $product->id;
                    $price->price = $priceValue;
                    $price->save();
                }
            }
        }

        return redirect()->route('products.index')->with('success', 'Selected product has been successfully updated.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $product = Product::find($id);
        if($product) {
            $product->delete();
        }

        \Session::flash('success', 'Selected product has been removed.');
    }
}
