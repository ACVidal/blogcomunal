<?php echo $__env->make('_header', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

<div class="container">
    <?php echo $__env->yieldContent('content'); ?>
    <?php echo $__env->make('index', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
</div><!-- /.container -->

<?php echo $__env->make('_footer', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>