<?php $__env->startSection('styles'); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <div class="row justify-content-between">
        <div class="col-9">
            <h1 class="h3 mb-2 text-gray-800"><?php echo e(__('bank_transfer.view-pending-invoice') . ' ' . $invoice->invoice_num); ?></h1>
            <p class="mb-4"><?php echo e(__('bank_transfer.view-pending-invoice-description')); ?></p>
        </div>
        <div class="col-3 text-right">
            <a href="<?php echo e(route('admin.settings.payment.bank-transfer.pending.index')); ?>" class="btn btn-info btn-icon-split">
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
                    <span class="text-gray-800 text-lg"><?php echo e(__('bank_transfer.transaction-status')); ?></span>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <?php if($invoice->invoice_status == \App\Invoice::INVOICE_STATUS_PENDING): ?>
                        <span class="text-warning"><?php echo e(__('bank_transfer.pending')); ?></span>
                    <?php elseif($invoice->invoice_status == \App\Invoice::INVOICE_STATUS_REJECT): ?>
                        <span class="text-danger"><?php echo e(__('bank_transfer.reject')); ?></span>
                    <?php elseif($invoice->invoice_status == \App\Invoice::INVOICE_STATUS_PAID): ?>
                        <span class="text-success"><?php echo e(__('bank_transfer.paid')); ?></span>
                    <?php endif; ?>
                </div>
            </div>

            <div class="row pt-3">
                <div class="col-12">
                    <span class="text-gray-800 text-lg"><?php echo e(__('backend.sidebar.plan')); ?></span>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <span><?php echo e($plan->plan_name); ?></span>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <span><?php echo e($plan->plan_max_featured_listing . ' ' . __('bank_transfer.max-featured-listing')); ?></span>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <span><?php echo e(__('backend.plan.price') . ': ' . strval($plan->plan_price)); ?></span>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <?php if($plan->plan_period == \App\Plan::PLAN_LIFETIME): ?>
                        <span><?php echo e(__('bank_transfer.yearly-billing')); ?></span>
                    <?php elseif($plan->plan_period == \App\Plan::PLAN_MONTHLY): ?>
                        <span><?php echo e(__('bank_transfer.monthly-billing')); ?></span>
                    <?php elseif($plan->plan_period == \App\Plan::PLAN_QUARTERLY): ?>
                        <span><?php echo e(__('bank_transfer.quarterly-billing')); ?></span>
                    <?php elseif($plan->plan_period == \App\Plan::PLAN_YEARLY): ?>
                        <span><?php echo e(__('bank_transfer.lifetime-billing')); ?></span>
                    <?php endif; ?>
                </div>
            </div>

            <div class="row pt-3">
                <div class="col-12">
                    <span class="text-gray-800 text-lg"><?php echo e(__('bank_transfer.transaction-detail')); ?></span>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <span><?php echo e(__('bank_transfer.bank-name') . ': ' . $invoice->invoice_bank_transfer_bank_name); ?></span>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <span><?php echo e(__('bank_transfer.transaction-detail') . ': ' . $invoice->invoice_bank_transfer_detail); ?></span>
                </div>
            </div>

            <?php if($invoice->invoice_status == \App\Invoice::INVOICE_STATUS_PENDING || $invoice->invoice_status == \App\Invoice::INVOICE_STATUS_REJECT): ?>
                <div class="row justify-content-between pt-3">
                    <div class="col-8">
                        <form action="<?php echo e(route('admin.settings.payment.bank-transfer.pending.approve', ['invoice' => $invoice->id])); ?>" method="POST">
                            <?php echo csrf_field(); ?>
                            <button type="submit" class="btn btn-success btn-sm text-white">
                                <?php echo e(__('bank_transfer.approve-transaction')); ?>

                            </button>
                        </form>
                    </div>
                    <div class="col-4 text-right">
                        <form action="<?php echo e(route('admin.settings.payment.bank-transfer.pending.reject', ['invoice' => $invoice->id])); ?>" method="POST">
                            <?php echo csrf_field(); ?>
                            <button type="submit" class="btn btn-danger btn-sm text-white">
                                <?php echo e(__('bank_transfer.reject-transaction')); ?>

                            </button>
                        </form>
                    </div>
                </div>
            <?php endif; ?>
        </div>
    </div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('scripts'); ?>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.admin.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home4/uaenurse/public_html/menteybody/laravel_project/resources/views/backend/admin/setting/payment/bank-transfer/pending/show.blade.php ENDPATH**/ ?>