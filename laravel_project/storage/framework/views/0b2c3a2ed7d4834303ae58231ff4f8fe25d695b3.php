<?php $__env->startSection('styles'); ?>
    <!-- Custom styles for this page -->
    <link href="<?php echo e(asset('backend/vendor/datatables/dataTables.bootstrap4.min.css')); ?>" rel="stylesheet">
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <div class="row justify-content-between">
        <div class="col-9">
            <h1 class="h3 mb-2 text-gray-800"><?php echo e(__('bank_transfer.pending-invoices')); ?></h1>
            <p class="mb-4"><?php echo e(__('bank_transfer.pending-invoices-desc')); ?></p>
        </div>
        <div class="col-3 text-right">
            <a href="<?php echo e(route('admin.settings.payment.bank-transfer.index')); ?>" class="btn btn-info btn-icon-split">
                <span class="icon text-white-50">
                  <i class="fas fa-backspace"></i>
                </span>
                <span class="text"><?php echo e(__('backend.shared.back')); ?></span>
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
                                <th><?php echo e(__('backend.subscription.invoice-num')); ?></th>
                                <th><?php echo e(__('backend.subscription.title')); ?></th>
                                <th><?php echo e(__('backend.subscription.description')); ?></th>
                                <th><?php echo e(__('backend.subscription.amount')); ?></th>
                                <th><?php echo e(__('backend.subscription.status')); ?></th>
                                <th><?php echo e(__('backend.subscription.date')); ?></th>
                                <th><?php echo e(__('backend.shared.action')); ?></th>
                            </tr>
                            </thead>
                            <tfoot>
                            <tr>
                                <th><?php echo e(__('backend.subscription.invoice-num')); ?></th>
                                <th><?php echo e(__('backend.subscription.title')); ?></th>
                                <th><?php echo e(__('backend.subscription.description')); ?></th>
                                <th><?php echo e(__('backend.subscription.amount')); ?></th>
                                <th><?php echo e(__('backend.subscription.status')); ?></th>
                                <th><?php echo e(__('backend.subscription.date')); ?></th>
                                <th><?php echo e(__('backend.shared.action')); ?></th>
                            </tr>
                            </tfoot>
                            <tbody>
                            <?php $__currentLoopData = $pending_invoices; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $invoice): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <tr>
                                    <td><?php echo e($invoice->invoice_num); ?></td>
                                    <td><?php echo e($invoice->invoice_item_title); ?></td>
                                    <td><?php echo e($invoice->invoice_item_description); ?></td>
                                    <td><?php echo e($invoice->invoice_amount); ?></td>
                                    <td><?php echo e($invoice->invoice_status); ?></td>
                                    <td><?php echo e($invoice->created_at); ?></td>
                                    <td>
                                        <a href="<?php echo e(route('admin.settings.payment.bank-transfer.pending.show', ['invoice' => $invoice->id])); ?>" class="btn btn-primary btn-circle">
                                            <i class="fas fa-search"></i>
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

<?php echo $__env->make('backend.admin.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home4/uaenurse/public_html/menteybody/laravel_project/resources/views/backend/admin/setting/payment/bank-transfer/pending/index.blade.php ENDPATH**/ ?>