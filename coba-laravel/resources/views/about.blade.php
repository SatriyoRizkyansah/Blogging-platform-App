@extends('layouts.main')

@section('container')
    <h1>Ini adalah halaman About!</h1>

    <h2>Bio data diri</h2>
    <h5>Nama : {{ $name }} </h5>
    <h5>Email : {{ $email }}</h5>
    <h5>Foto  : </h5><img src="{{ $img }}" alt="{{ $name }}"; width="200px">
@endsection