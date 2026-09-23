<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class BookSeeder extends Seeder
{
    public function run(): void
    {
        // Must run AFTER AuthorSeeder and CategorySeeder — books have
        // foreign keys pointing at authors/categories.
        $books = DB::connection('legacy')->table('books')->select(
            'id', 'title', 'author_id', 'category_id', 'price',
            'stock', 'description', 'published_date', 'book_img', 'created_at'
        )->get();

        foreach ($books as $book) {
            DB::table('books')->updateOrInsert(
                ['id' => $book->id],
                [
                    'author_id' => $book->author_id,
                    'category_id' => $book->category_id,
                    'title' => $book->title,
                    'description' => $book->description,
                    'price' => $book->price,
                    'stock' => $book->stock,
                    // old column was named book_img, new schema calls it image_url
                    'image_url' => $book->book_img,
                    'published_date' => $book->published_date,
                    'created_at' => $book->created_at ?? now(),
                    'updated_at' => now(),
                ]
            );
        }

        DB::statement("SELECT setval('books_id_seq', (SELECT MAX(id) FROM books))");

        $this->command->info("Imported {$books->count()} books.");
    }
}
