<?php

namespace App\Models;


class Post 
{
    private static $blog_posts = [
    [
        "title" => "Judul post pertama",
        "slug" => "judul-post-pertama", 
        "author" => "Satriyo Rizkyansah",
        "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus quasi ratione ex, mollitia adipisci voluptate in, corporis culpa quibusdam cum quam. Dolores sequi ducimus corporis modi distinctio dolore quasi ea aliquam dolor assumenda inventore at, totam perferendis magni, error commodi vel est neque ad accusamus saepe numquam aspernatur. Alias perferendis cum nostrum, eveniet qui tempora possimus. Qui eligendi atque tempora saepe labore doloribus voluptatum unde vero hic perspiciatis numquam nam nobis rerum commodi itaque, quae temporibus libero quas ut asperiores."
    ], 
    [
        "title" => "Judul post kedua",
        "slug" => "judul-post-kedua", 
        "author" => "Jarwo",
        "body" => " Lorem ipsum dolor sit amet consectetur, adipisicing elit. Cumque distinctio illum accusantium nesciunt nisi! Amet, dolorem! Doloribus harum, beatae expedita ad at nulla fuga ullam tenetur veniam eligendi necessitatibus iusto consequuntur dolore quo voluptas facere reiciendis atque? Facilis ducimus perferendis nam saepe ea iste error reprehenderit. Eligendi corporis numquam laboriosam fuga esse rerum sint aspernatur maxime deserunt nobis nihil delectus autem vel aut cumque animi, maiores accusamus laudantium ipsum, sequi omnis quam dicta quos odit! In est at facere illo, sint libero vitae? Laudantium, asperiores earum! Quo unde dolore labore quam! Dolorem, quam! Quam deleniti ipsa hic quod, non odit."
    ]
    ];

    public static function all(){
        return collect(self::$blog_posts);
    }

    public static function find($slug){
        $posts = static::all();
        return $posts->firstWhere('slug', $slug) ;
    }


    
}
