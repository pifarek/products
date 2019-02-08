<?php

use Faker\Generator as Faker;

$factory->define(App\Product::class, function (Faker $faker) {
    return [
        'name' => $faker->sentence(4),
        'description' => $faker->paragraphs(3, true),
        'created_at' => now(),
        'updated_at' => now()
    ];
});
