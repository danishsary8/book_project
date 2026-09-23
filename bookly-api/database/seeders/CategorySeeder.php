<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CategorySeeder extends Seeder
{
    public function run(): void
    {
        $categories = DB::connection('legacy')->table('categories')->select('id', 'name')->get();

        foreach ($categories as $category) {
            DB::table('categories')->updateOrInsert(
                ['id' => $category->id],
                [
                    'name' => $category->name,
                    'created_at' => now(),
                    'updated_at' => now(),
                ]
            );
        }

        DB::statement("SELECT setval('categories_id_seq', (SELECT MAX(id) FROM categories))");

        $this->command->info("Imported {$categories->count()} categories.");
    }
}
