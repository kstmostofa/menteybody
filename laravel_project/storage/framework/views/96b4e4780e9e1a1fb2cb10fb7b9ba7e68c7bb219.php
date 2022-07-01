<?php $__env->startSection('styles'); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <div class="row justify-content-between">
        <div class="col-mb-12 col-lg-9">
            <h1 class="h3 mb-2 text-gray-800"><?php echo e(__('bank_transfer.edit-bank-transfer')); ?></h1>
            <p class="mb-4"><?php echo e(__('bank_transfer.edit-bank-transfer-desc')); ?></p>
        </div>
        <div class="col-mb-12 col-lg-3 pb-3 text-right">
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
                <div class="col-mb-12 col-lg-6">
                    <form method="POST" action="<?php echo e(route('admin.settings.payment.bank-transfer.update', ['setting_bank_transfer' => $setting_bank_transfer->id])); ?>">
                        <?php echo csrf_field(); ?>
                        <?php echo method_field('PUT'); ?>

                        <div class="row form-group">
                            <div class="col-12">
                                <?php if($setting_bank_transfer->setting_bank_transfer_status == \App\Setting::SITE_PAYMENT_BANK_TRANSFER_ENABLE): ?>
                                    <span class="pl-2 pr-2 pt-1 pb-1 bg-success text-white rounded"><?php echo e(__('bank_transfer.enable')); ?></span>
                                <?php else: ?>
                                    <span class="pl-2 pr-2 pt-1 pb-1 bg-warning text-white rounded"><?php echo e(__('bank_transfer.disable')); ?></span>
                                <?php endif; ?>
                            </div>
                        </div>
                        <hr>

                        <div class="row form-group">
                            <div class="col-md-12">
                                <label for="setting_bank_transfer_bank_name" class="text-black"><?php echo e(__('bank_transfer.bank-name')); ?></label>
                                <input id="setting_bank_transfer_bank_name" type="text" class="form-control <?php $__errorArgs = ['setting_bank_transfer_bank_name'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="setting_bank_transfer_bank_name" value="<?php echo e(old('setting_bank_transfer_bank_name') ? old('setting_bank_transfer_bank_name') : $setting_bank_transfer->setting_bank_transfer_bank_name); ?>">
                                <?php $__errorArgs = ['setting_bank_transfer_bank_name'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                <span class="invalid-tooltip">
                                        <strong><?php echo e($message); ?></strong>
                                    </span>
                                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                            </div>
                        </div>

                        <div class="row form-group">

                            <div class="col-md-12">
                                <label class="text-black" for="setting_bank_transfer_bank_account_info"><?php echo e(__('bank_transfer.bank-account-info')); ?></label>
                                <textarea rows="4" id="setting_bank_transfer_bank_account_info" class="form-control <?php $__errorArgs = ['setting_bank_transfer_bank_account_info'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="setting_bank_transfer_bank_account_info"><?php echo e(old('setting_bank_transfer_bank_account_info') ? old('setting_bank_transfer_bank_account_info') : $setting_bank_transfer->setting_bank_transfer_bank_account_info); ?></textarea>
                                <?php $__errorArgs = ['setting_bank_transfer_bank_account_info'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                <span class="invalid-tooltip">
                                        <strong><?php echo e($message); ?></strong>
                                    </span>
                                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                            </div>
                        </div>

                        <div class="row form-group">

                            <div class="col-md-6">
                                <label class="text-black" for="setting_bank_transfer_status"><?php echo e(__('bank_transfer.status')); ?></label>

                                <select class="custom-select <?php $__errorArgs = ['setting_bank_transfer_status'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="setting_bank_transfer_status">
                                    <option value="<?php echo e(\App\Setting::SITE_PAYMENT_BANK_TRANSFER_ENABLE); ?>" <?php echo e((old('setting_bank_transfer_status') ? old('setting_bank_transfer_status') : $setting_bank_transfer->setting_bank_transfer_status) == \App\Setting::SITE_PAYMENT_BANK_TRANSFER_ENABLE ? 'selected' : ''); ?>><?php echo e(__('bank_transfer.enable')); ?></option>
                                    <option value="<?php echo e(\App\Setting::SITE_PAYMENT_BANK_TRANSFER_DISABLE); ?>" <?php echo e((old('setting_bank_transfer_status') ? old('setting_bank_transfer_status') : $setting_bank_transfer->setting_bank_transfer_status) == \App\Setting::SITE_PAYMENT_BANK_TRANSFER_DISABLE ? 'selected' : ''); ?>><?php echo e(__('bank_transfer.disable')); ?></option>
                                </select>
                                <?php $__errorArgs = ['setting_bank_transfer_status'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                <span class="invalid-tooltip">
                                    <strong><?php echo e($message); ?></strong>
                                </span>
                                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                            </div>

                        </div>

                        <div class="row form-group justify-content-between">
                            <div class="col-8">
                                <button type="submit" class="btn btn-success text-white">
                                    <?php echo e(__('backend.shared.update')); ?>

                                </button>
                            </div>
                            <div class="col-4 text-right">
                                <a class="text-danger" href="#" data-toggle="modal" data-target="#deleteModal">
                                    <?php echo e(__('backend.shared.delete')); ?>

                                </a>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModal" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle"><?php echo e(__('backend.shared.delete-confirm')); ?></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <?php echo e(__('backend.shared.delete-message', ['record_type' => __('bank_transfer.bank-transfer'), 'record_name' => $setting_bank_transfer->setting_bank_transfer_bank_name])); ?>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal"><?php echo e(__('backend.shared.cancel')); ?></button>
                    <form action="<?php echo e(route('admin.settings.payment.bank-transfer.destroy', ['setting_bank_transfer' => $setting_bank_transfer->id])); ?>" method="POST">
                        <?php echo csrf_field(); ?>
                        <?php echo method_field('DELETE'); ?>
                        <button type="submit" class="btn btn-danger"><?php echo e(__('backend.shared.delete')); ?></button>
                    </form>
                </div>
            </div>
        </div>
    </div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('scripts'); ?>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.admin.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home4/uaenurse/public_html/menteybody/laravel_project/resources/views/backend/admin/setting/payment/bank-transfer/edit.blade.php ENDPATH**/ ?>