<?php $__env->startSection('styles'); ?>
    <!-- Custom styles for this page -->
    <link href="<?php echo e(asset('backend/vendor/datatables/dataTables.bootstrap4.min.css')); ?>" rel="stylesheet">
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <div class="row justify-content-between">
        <div class="col-9">
            <h1 class="h3 mb-2 text-gray-800"><?php echo e(__('backend.testimonial.testimonial')); ?></h1>
            <p class="mb-4"><?php echo e(__('backend.testimonial.testimonial-desc')); ?></p>
        </div>
        <div class="col-3 text-right">
            <a href="<?php echo e(route('admin.testimonials.create')); ?>" class="btn btn-info btn-icon-split">
                <span class="icon text-white-50">
                  <i class="fas fa-plus"></i>
                </span>
                <span class="text"><?php echo e(__('backend.testimonial.add-testimonial')); ?></span>
            </a>
        </div>
    </div>

    <!-- Content Row -->
    <div class="row bg-white pt-4 pl-3 pr-3 pb-4">
        <div class="col-12">
            <div class="row">
                <div class="col-12">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                            <tr>
                                <th><?php echo e(__('backend.testimonial.id')); ?></th>
                                <th><?php echo e(__('backend.testimonial.name')); ?></th>
                                <th><?php echo e(__('backend.testimonial.company')); ?></th>
                                <th><?php echo e(__('backend.testimonial.job-title')); ?></th>
                                <th><?php echo e(__('backend.testimonial.image')); ?></th>
                                <th><?php echo e(__('backend.testimonial.description')); ?></th>
                                <th><?php echo e(__('backend.shared.action')); ?></th>
                            </tr>
                            </thead>
                            <tfoot>
                            <tr>
                                <th><?php echo e(__('backend.testimonial.id')); ?></th>
                                <th><?php echo e(__('backend.testimonial.name')); ?></th>
                                <th><?php echo e(__('backend.testimonial.company')); ?></th>
                                <th><?php echo e(__('backend.testimonial.job-title')); ?></th>
                                <th><?php echo e(__('backend.testimonial.image')); ?></th>
                                <th><?php echo e(__('backend.testimonial.description')); ?></th>
                                <th><?php echo e(__('backend.shared.action')); ?></th>
                            </tr>
                            </tfoot>
                            <tbody>
                            <?php $__currentLoopData = $all_testimonials; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $testimonial): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <tr>
                                    <td><?php echo e($testimonial->id); ?></td>
                                    <td><?php echo e($testimonial->testimonial_name); ?></td>
                                    <td><?php echo e($testimonial->testimonial_company); ?></td>
                                    <td><?php echo e($testimonial->testimonial_job_title); ?></td>

                                    <?php if(empty($testimonial->testimonial_image)): ?>
                                        <td><img src="<?php echo e(asset('backend/images/placeholder/profile-' . intval($testimonial->id % 10) . '.webp')); ?>" class="img-responsive"></td>
                                    <?php else: ?>
                                        <td><img src="<?php echo e(Storage::disk('public')->url('testimonial/'. $testimonial->testimonial_image)); ?>" class="img-responsive"></td>
                                    <?php endif; ?>

                                    <td><?php echo e($testimonial->testimonial_description); ?></td>
                                    <td>
                                        <a href="<?php echo e(route('admin.testimonials.edit', $testimonial->id)); ?>" class="btn btn-primary btn-circle">
                                            <i class="fas fa-cog"></i>
                                        </a>
                                    </td>
                                </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('scripts'); ?>
    <!-- Page level plugins -->
    <script src="<?php echo e(asset('backend/vendor/datatables/jquery.dataTables.min.js')); ?>"></script>
    <script src="<?php echo e(asset('backend/vendor/datatables/dataTables.bootstrap4.min.js')); ?>"></script>
    <script>
        // Call the dataTables jQuery plugin
        $(document).ready(function() {

            "use strict";

            $('#dataTable').DataTable();
        });
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.admin.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home4/uaenurse/public_html/menteybody/laravel_project/resources/views/backend/admin/testimonial/index.blade.php ENDPATH**/ ?>