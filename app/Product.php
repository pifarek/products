<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'products';

    public function prices() {
        return $this->hasMany(\App\Price::class, 'product_id', 'id');
    }
}
