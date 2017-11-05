        <div class="container">
            <footer class="blog-footer">
                <p>Blog template built for <a href="http://getbootstrap.com">Bootstrap</a></p>
                <p>
                    <a href="#">Back to top</a>
                </p>
            </footer>
        </div>
        
        <!-- Placed at the end of the document so the pages load faster -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">
        
        <!-- Bootstrap core JavaScript
        ================================================== -->
        <script src="<?php echo e(asset('js/app.js')); ?>"></script>
        
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script src="<?php echo e(asset('js/ie10-viewport-bug-workaround.js')); ?>"></script>
        
        <?php echo $__env->yieldContent('javascripts'); ?>
    </body>
</html>