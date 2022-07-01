<?php $__env->startSection('styles'); ?>
    <!-- Custom styles for this page -->
    <link href="<?php echo e(asset('backend/vendor/datatables/dataTables.bootstrap4.min.css')); ?>" rel="stylesheet">
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <div class="row justify-content-between">
        <div class="col-9">
            <h1 class="h3 mb-2 text-gray-800"><?php echo e(__('bank_transfer.bank-transfer-manage')); ?></h1>
            <p class="mb-4"><?php echo e(__('bank_transfer.bank-transfer-manage-desc')); ?></p>
        </div>
        <div class="col-3 text-right">
            <a href="<?php echo e(route('admin.settings.payment.bank-transfer.create')); ?>" class="btn btn-info btn-icon-split">
                <span class="icon text-white-50">
                  <i class="fas fa-plus"></i>
                </span>
                <span class="text"><?php echo e(__('bank_transfer.add-bank-transfer')); ?></span>
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
                                <th><?php echo e(__('bank_transfer.id')); ?></th>
                                <th><?php echo e(__('bank_transfer.bank-name')); ?></th>
                                <th><?php echo e(__('bank_transfer.bank-account-info')); ?></th>
                                <th><?php echo e(__('bank_transfer.status')); ?></th>
                                <th><?php echo e(__('backend.shared.action')); ?></th>
                            </tr>
                            </thead>
                            <tfoot>
                            <tr>
                                <th><?php echo e(__('bank_transfer.id')); ?></th>
                                <th><?php echo e(__('bank_transfer.bank-name')); ?></th>
                                <th><?php echo e(__('bank_transfer.bank-account-info')); ?></th>
                                <th><?php echo e(__('bank_transfer.status')); ?></th>
                                <th><?php echo e(__('backend.shared.action')); ?></th>
                            </tr>
                            </tfoot>
                            <tbody>
                            <?php $__currentLoopData = $all_bank_transfers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $bank_transfer): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <tr>
                                    <td><?php echo e($bank_transfer->id); ?></td>
                                    <td><?php echo e($bank_transfer->setting_bank_transfer_bank_name); ?></td>
                                    <td><?php echo e($bank_transfer->setting_bank_transfer_bank_account_info); ?></td>
                                    <td>
                                        <?php if($bank_transfer->setting_bank_transfer_status == \App\Setting::SITE_PAYMENT_BANK_TRANSFER_ENABLE): ?>
                                            <a class="btn btn-success btn-sm text-white"><?php echo e(__('bank_transfer.enable')); ?></a>
                                        <?php else: ?>
                                            <a class="btn btn-warning btn-sm text-white"><?php echo e(__('bank_transfer.disable')); ?></a>
                                        <?php endif; ?>
                                    </td>
                                    <td>
                                        <a href="<?php echo e(route('admin.settings.payment.bank-transfer.edit', ['setting_bank_transfer' => $bank_transfer->id])); ?>" class="btn btn-primary btn-circle">
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

            <div class="row pt-5">
                <div class="col-12">
                    <a href="<?php echo e(route('admin.settings.payment.bank-transfer.pending.index')); ?>">
                        <i class="far fa-list-alt"></i>
                        <?php echo e(__('bank_transfer.view-all-pending-invoices')); ?>

                    </a>
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

<?php echo $__env->make('backend.admin.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home4/uaenurse/public_html/menteybody/laravel_project/resources/views/backend/admin/setting/payment/bank-transfer/index.blade.php ENDPATH**/ ?>