{{-- @dd($posts) --}}

@extends('layouts.main')

@section('container')

    <h1 class="mb-5">Post Categories</h1>
    
    @foreach ($categories as $category)



    <article class="mb-5">

        <ul>
            <li>
                <h2><a href="categories/{{ $category->slug }}"><h2 >{{ $category->name }}</h2></a></h2> 
            </li>
        </ul>
        
    </article>
    @endforeach


@endsection
