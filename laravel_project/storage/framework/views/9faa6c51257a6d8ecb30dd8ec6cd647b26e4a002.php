<?php $__env->startSection('styles'); ?>
    <!-- Custom styles for this page -->
    <link href="<?php echo e(asset('backend/vendor/datatables/dataTables.bootstrap4.min.css')); ?>" rel="stylesheet">
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <div class="row justify-content-between">
        <div class="col-9">
            <h1 class="h3 mb-2 text-gray-800"><?php echo e(__('trans.sync-title')); ?></h1>
            <p class="mb-4"><?php echo e(__('trans.sync-desc')); ?></p>
        </div>
        <div class="col-3 text-right">
        </div>
    </div>

    <!-- Content Row -->
    <div class="row bg-white pt-4 pl-3 pr-3 pb-4">
        <div class="col-12">

            <div class="row mb-3">
                <div class="col-12">
                    <form method="POST" action="<?php echo e(route('admin.lang.sync.do')); ?>">
                        <?php echo csrf_field(); ?>
                        <button type="submit" class="btn btn-success"><?php echo e(__('trans.sync-button')); ?></button>
                    </form>
                </div>
            </div>

            <div class="row mb-5">
                <div class="col-12">
                    <p><strong><?php echo e(__('trans.sync-index-questions')); ?></strong></p>
                    <p><?php echo e(__('trans.sync-index-answer-1')); ?></p>
                    <p><?php echo e(__('trans.sync-index-answer-2')); ?></p>
                    <p><?php echo e(__('trans.sync-index-help')); ?></p>
                    <p><strong><?php echo e(__('trans.sync-index-max-exe-time') . " " . ini_get('max_execution_time') . " " . __('trans.sync-index-second')); ?></strong></p>
                </div>
            </div>
            <hr>
            <div class="row mt-5">
                <div class="col-12">
                    <form method="POST" action="<?php echo e(route('admin.lang.sync.restore')); ?>">
                        <?php echo csrf_field(); ?>
                        <button type="submit" class="btn btn-warning"><?php echo e(__('trans.sync-restore')); ?></button>
                        <small id="latHelpBlock" class="form-text text-muted">
                            <?php echo e(__('trans.sync-restore-help')); ?>

                        </small>
                    </form>
                </div>
            </div>

        </div>
    </div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('scripts'); ?>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.admin.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home4/uaenurse/public_html/menteybody/laravel_project/resources/views/backend/admin/lang/sync/index.blade.php ENDPATH**/ ?>