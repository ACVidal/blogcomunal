<div class="container">
    <div class="blog-header">
        <h1 class="blog-title">Developers en Llamas</h1>
        <p class="lead blog-description">Blog donde saber ¿por qué estamos en llamas?</p>
    </div>
    
    <div class="row">
        <div class="col-sm-8 blog-main">

            <div class="blog-post">
                <h2 class="blog-post-title">Estúpido y sensual post</h2>
                <p class="blog-post-meta">December 23, 2013 by <a href="#">Adri</a></p>

                <p>Cum sociis natoque penatibus et magnis <a href="#">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>
                <blockquote>
                    <p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                </blockquote>
                
                <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
                <p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
            </div><!-- /.blog-post -->

            <?php echo $__env->yieldContent('content'); ?>
            
            <nav>
                <ul class="pager">
                    <li><a href="#">Previous</a></li>
                    <li><a href="#">Next</a></li>
                </ul>
            </nav>
            
        </div><!-- /.blog-main -->
        
        <!--Sidebar-->
        <?php echo $__env->make('_sidebar', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

    </div><!-- /.row -->
</div><!-- /.container -->