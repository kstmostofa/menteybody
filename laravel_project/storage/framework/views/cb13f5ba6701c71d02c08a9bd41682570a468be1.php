<?php $__env->startComponent('mail::message'); ?>

# <?php echo e(__('canvas::app.your_weekly_writer_summary_for')); ?> <?php echo e($data['endDate']); ?>


<?php echo e(__('canvas::app.from')); ?> <?php echo e($data['startDate']); ?> <?php echo e(__('canvas::app.to')); ?> <?php echo e($data['endDate']); ?> <?php echo e(__('canvas::app.your_posts_received')); ?>


# <?php echo e(__('canvas::app.views')); ?>

## +<?php echo e($data['totals']['views']); ?>


# <?php echo e(__('canvas::app.visits')); ?>

## +<?php echo e($data['totals']['visits']); ?>


<?php $__env->startComponent('mail::table'); ?>
|                                                                   | <?php echo e(__('canvas::app.visits')); ?>           | <?php echo e(__('canvas::app.views')); ?>             |
| ----------------------------------------------------------------- | ---------------------------------------: | -----------------------------------------:|
<?php $__currentLoopData = $data['posts']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $post): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
| *<?php echo e(\Illuminate\Support\Str::limit($post['title'], 40, '...')); ?>* | **+<?php echo e(number_format($post['visits'])); ?>** | **+<?php echo e(number_format($post['views'])); ?>** |
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php echo $__env->renderComponent(); ?>

<?php $__env->startComponent('mail::button', ['url' => url(config('canvas.path'))]); ?>
<?php echo e(__('canvas::app.see_all_stats')); ?>

<?php echo $__env->renderComponent(); ?>

Thanks,<br>
<?php echo e(config('app.name')); ?>

<?php echo $__env->renderComponent(); ?>
<?php /**PATH /home4/uaenurse/public_html/menteybody/laravel_project/vendor/cnvs/canvas/resources/views/mail/digest.blade.php ENDPATH**/ ?>