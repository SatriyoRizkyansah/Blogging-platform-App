@extends('layouts.main')

@section('container')
<div class="row justify-content-center">
  <div class="col-lg-5">
    <main class="form-registration w-100 m-auto">
      <h1 class="h3 mb-3 fw-normal text-center">Registration Form</h1>
      <form action="/register" method="post">
        @csrf
        {{-- <img class="mb-4" src="../assets/brand/bootstrap-logo.svg" alt="" width="72" height="57"> --}}
  
        <div class="form-floating">
          <input type="text" class="form-control rounded-top @error('name') is-invalid @enderror" id="name" placeholder="name" name="name" required value="{{old('name')}}">
          <label for="floatingInput">Name</label>
          @error('name')
          <div class="invalid-feeback">
            {{ $message }}
          </div>
          @enderror
        </div>

        <div class="form-floating">
          <input type="text" class="form-control  @error('username') is-invalid @enderror" id="username" placeholder="username" name="username" required value="{{old('username')}}"> 
          <label for="floatingInput">Username</label>
          @error('username')
          <div class="invalid-feeback">
            {{ $message }}
          </div>
          @enderror
        </div>

        <div class="form-floating">
          <input type="email" name="email" class="form-control @error('email') is-invalid @enderror" id="email" placeholder="name@example.com" name="email" required value="{{old('email')}}">
          <label for="floatingInput">Email address</label>
          @error('email')
          <div class="invalid-feeback">
            {{ $message }}
          </div>
          @enderror
        </div>
        <div class="form-floating">
          <input type="password" class="form-control rounded-bottom @error('password') is-invalid @enderror" id="password" placeholder="Password" name="password" required">
          <label for="floatingPassword">Password</label>
          @error('pasword')
          <div class="invalid-feeback">
            {{ $message }}
          </div>
          @enderror
        </div>
    
        <div class="form-check text-start my-3">
        <button class="btn btn-primary w-100 py-2" type="submit">Login</button>
      </form>
      <small class="d-block text-center mt-3">Already Registered? <a href="/login">Login Now!</a></small>
    </main>
  </div>
</div>

@endsection