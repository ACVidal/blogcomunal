<!doctype html>
<html lang="{{ config('app.locale') }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <title>{{ config('app.name') }} @yield('title')</title>

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="{{ asset('css/app.css') }}" />

        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <link rel="stylesheet" href="{{ asset('css/ie10-viewport-bug-workaround.css') }}" />
        
        <!-- Custom styles for this template -->
        <link rel="stylesheet" href="{{ asset('css/blog.css') }}" />
        
        @yield('stylesheet')
    </head>
    <body>
        <div class="blog-masthead">
            <div class="container">
                <nav class="blog-nav">
<!--                     <a class="blog-nav-item active" href="/">Inicio</a>
                    <a class="blog-nav-item" href="/developers">Developers</a>
                    <a class="blog-nav-item" href="/blog">Blog</a>
                    <a class="blog-nav-item" href="/contacto">Contacto</a> -->

                    <a class="blog-nav-item {{ Request::is('/') ? 'active' : '' }}" href="/">Inicio</a>
                    <a class="blog-nav-item {{ Request::is('developers') ? 'active' : '' }}" href="/developers">Developers</a>
                    <a class="blog-nav-item {{ Request::is('blog') ? 'active' : '' }}" href="/blog">Blog</a>
                    <a class="blog-nav-item {{ Request::is('contacto') ? 'active' : '' }}" href="/contacto">Contacto</a>
                </nav>
            </div>
        </div>