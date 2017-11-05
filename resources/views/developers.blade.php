@extends('main')

@section('title', '| Developers')

@section('content')
    <div class="blog-header">
        <h1 class="blog-title">Show Case</h1>
    </div>
    
    <div class="row">
        <div class="col-sm-8 blog-main">
            
            <div class="blog-content">
                <p>INFORMACION RANDOM SOBRE LOS PROGRAMADORES</p>
                ...
            </div><!-- /.blog-post -->
            
        </div><!-- /.blog-main -->
        
        <!--Sidebar-->
        @include('_sidebar')

    </div><!-- /.row -->
@endsection