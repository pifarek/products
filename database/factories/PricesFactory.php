<?php

use Faker\Generator as Faker;

$factory->define(App\Price::class, function (Faker $faker) {
    return [
        'price' => $faker->randomFloat(2, 0, 100)
    ];
});
