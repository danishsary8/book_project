<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class AuthorSeeder extends Seeder
{
    public function run(): void
    {
        $authors = DB::connection('legacy')->table('authors')->select('id', 'name')->get();

        foreach ($authors as $author) {
            DB::table('authors')->updateOrInsert(
                ['id' => $author->id],
                [
                    'name' => $author->name,
                    'created_at' => now(),
                    'updated_at' => now(),
                ]
            );
        }

        // keep the new table's auto-increment counter ahead of the imported IDs
        DB::statement("SELECT setval('authors_id_seq', (SELECT MAX(id) FROM authors))");

        $this->command->info("Imported {$authors->count()} authors.");
    }
}
