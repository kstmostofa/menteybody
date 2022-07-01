<?php $__env->startSection('styles'); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <div class="row justify-content-between">
        <div class="col-9">
            <h1 class="h3 mb-2 text-gray-800"><?php echo e(__('payumoney.edit-payumoney-setting')); ?></h1>
            <p class="mb-4"><?php echo e(__('payumoney.edit-payumoney-setting-desc')); ?></p>
        </div>
    </div>

    <!-- Content Row -->
    <div class="row bg-white pt-4 pl-3 pr-3 pb-4">
        <div class="col-12">
            <div class="row">
                <div class="col-12">
                    <form method="POST" action="<?php echo e(route('admin.settings.payment.payumoney.update')); ?>" class="">
                        <?php echo csrf_field(); ?>

                        <div class="row form-group">
                            <div class="col-12">
                                <?php if($site_global_settings->setting_site_payumoney_enable == \App\Setting::SITE_PAYMENT_PAYUMONEY_ENABLE): ?>
                                    <span class="pl-2 pr-2 pt-1 pb-1 bg-success text-white rounded"><?php echo e(__('payumoney.payumoney-enabled')); ?></span>
                                <?php else: ?>
                                    <span class="pl-2 pr-2 pt-1 pb-1 bg-warning text-white rounded"><?php echo e(__('payumoney.payumoney-disabled')); ?></span>
                                <?php endif; ?>
                            </div>
                        </div>

                        <hr>

                        <div class="row form-group">
                            <div class="col-12">

                                <div class="custom-control custom-checkbox">
                                    <input value="<?php echo e(\App\Setting::SITE_PAYMENT_PAYUMONEY_ENABLE); ?>" name="setting_site_payumoney_enable" type="checkbox" class="custom-control-input" id="setting_site_payumoney_enable" <?php echo e((old('setting_site_payumoney_enable') ? old('setting_site_payumoney_enable') : $site_global_settings->setting_site_payumoney_enable) == \App\Setting::SITE_PAYMENT_PAYUMONEY_ENABLE ? 'checked' : ''); ?>>
                                    <label class="custom-control-label" for="setting_site_payumoney_enable"><?php echo e(__('payumoney.enable-payumoney')); ?></label>
                                </div>
                                <?php $__errorArgs = ['setting_site_payumoney_enable'];
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
                            <div class="col-md-4 col-sm-12">
                                <label class="text-black" for="setting_site_payumoney_mode"><?php echo e(__('payumoney.mode')); ?></label>
                                <select class="custom-select <?php $__errorArgs = ['setting_site_payumoney_mode'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="setting_site_payumoney_mode">
                                    <option value="<?php echo e(\App\Setting::SITE_PAYMENT_PAYUMONEY_MODE_LIVE); ?>" <?php echo e((old('setting_site_payumoney_mode') ? old('setting_site_payumoney_mode') : $site_global_settings->setting_site_payumoney_mode) == \App\Setting::SITE_PAYMENT_PAYUMONEY_MODE_LIVE ? 'selected' : ''); ?>><?php echo e(__('payumoney.live')); ?></option>
                                    <option value="<?php echo e(\App\Setting::SITE_PAYMENT_PAYUMONEY_MODE_TEST); ?>" <?php echo e((old('setting_site_payumoney_mode') ? old('setting_site_payumoney_mode') : $site_global_settings->setting_site_payumoney_mode) == \App\Setting::SITE_PAYMENT_PAYUMONEY_MODE_TEST ? 'selected' : ''); ?>><?php echo e(__('payumoney.test')); ?></option>
                                </select>
                                <?php $__errorArgs = ['setting_site_payumoney_mode'];
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

                            <div class="col-md-4 col-sm-12">

                                <label class="text-black" for="setting_site_payumoney_merchant_key"><?php echo e(__('payumoney.merchant-key')); ?></label>
                                <input id="setting_site_payumoney_merchant_key" type="text" class="form-control <?php $__errorArgs = ['setting_site_payumoney_merchant_key'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="setting_site_payumoney_merchant_key" value="<?php echo e(old('setting_site_payumoney_merchant_key') ? old('setting_site_payumoney_merchant_key') : $site_global_settings->setting_site_payumoney_merchant_key); ?>">
                                <?php $__errorArgs = ['setting_site_payumoney_merchant_key'];
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

                            <div class="col-md-4 col-sm-12">

                                <label class="text-black" for="setting_site_payumoney_salt"><?php echo e(__('payumoney.merchant-salt')); ?></label>
                                <input id="setting_site_payumoney_salt" type="text" class="form-control <?php $__errorArgs = ['setting_site_payumoney_salt'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="setting_site_payumoney_salt" value="<?php echo e(old('setting_site_payumoney_salt') ? old('setting_site_payumoney_salt') : $site_global_settings->setting_site_payumoney_salt); ?>">
                                <?php $__errorArgs = ['setting_site_payumoney_salt'];
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
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('scripts'); ?>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.admin.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home4/uaenurse/public_html/menteybody/laravel_project/resources/views/backend/admin/setting/payment/payumoney/edit.blade.php ENDPATH**/ ?>