<?php

use Illuminate\Database\Seeder;

class ProductsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Product::class, 100)->create()->each(function ($product) {
            for ($i = 0; $i < rand(1, 3); $i++) {
                $product->prices()->save(factory(App\Price::class)->make());
            }
        });;
    }
}
