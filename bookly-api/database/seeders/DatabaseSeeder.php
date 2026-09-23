<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    public function run(): void
    {
        // Order matters: authors/categories must exist before books
        // (books has foreign keys pointing at both).
        $this->call([
            AuthorSeeder::class,
            CategorySeeder::class,
            BookSeeder::class,
        ]);
    }
}
