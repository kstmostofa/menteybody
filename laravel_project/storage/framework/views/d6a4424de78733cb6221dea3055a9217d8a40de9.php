<?php $__env->startSection('styles'); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <div class="row justify-content-between">
        <div class="col-9">
            <h1 class="h3 mb-2 text-gray-800"><?php echo e(__('recaptcha.google-recaptcha')); ?></h1>
            <p class="mb-4"><?php echo e(__('recaptcha.google-recaptcha-desc')); ?></p>
        </div>
    </div>

    <!-- Content Row -->
    <div class="row bg-white pt-4 pl-3 pr-3 pb-4">
        <div class="col-12">
            <div class="row">
                <div class="col-12">
                    <form method="POST" action="<?php echo e(route('admin.settings.recaptcha.update')); ?>" class="">
                        <?php echo csrf_field(); ?>
                        <div class="row form-group">
                            <div class="col-12">

                                <div class="custom-control custom-checkbox">
                                    <input value="<?php echo e(\App\Setting::SITE_RECAPTCHA_LOGIN_ENABLE); ?>" name="setting_site_recaptcha_login_enable" type="checkbox" class="custom-control-input" id="setting_site_recaptcha_login_enable" <?php echo e((old('setting_site_recaptcha_login_enable') ? old('setting_site_recaptcha_login_enable') : $all_recaptcha_settings->setting_site_recaptcha_login_enable) == \App\Setting::SITE_RECAPTCHA_LOGIN_ENABLE ? 'checked' : ''); ?>>
                                    <label class="custom-control-label" for="setting_site_recaptcha_login_enable"><?php echo e(__('recaptcha.enable-login')); ?></label>
                                </div>
                                <?php $__errorArgs = ['setting_site_recaptcha_login_enable'];
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
                            <div class="col-12">

                                <div class="custom-control custom-checkbox">
                                    <input value="<?php echo e(\App\Setting::SITE_RECAPTCHA_SIGN_UP_ENABLE); ?>" name="setting_site_recaptcha_sign_up_enable" type="checkbox" class="custom-control-input" id="setting_site_recaptcha_sign_up_enable" <?php echo e((old('setting_site_recaptcha_sign_up_enable') ? old('setting_site_recaptcha_sign_up_enable') : $all_recaptcha_settings->setting_site_recaptcha_sign_up_enable) == \App\Setting::SITE_RECAPTCHA_SIGN_UP_ENABLE ? 'checked' : ''); ?>>
                                    <label class="custom-control-label" for="setting_site_recaptcha_sign_up_enable"><?php echo e(__('recaptcha.enable-sign-up')); ?></label>
                                </div>
                                <?php $__errorArgs = ['setting_site_recaptcha_sign_up_enable'];
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
                            <div class="col-12">

                                <div class="custom-control custom-checkbox">
                                    <input value="<?php echo e(\App\Setting::SITE_RECAPTCHA_CONTACT_ENABLE); ?>" name="setting_site_recaptcha_contact_enable" type="checkbox" class="custom-control-input" id="setting_site_recaptcha_contact_enable" <?php echo e((old('setting_site_recaptcha_contact_enable') ? old('setting_site_recaptcha_contact_enable') : $all_recaptcha_settings->setting_site_recaptcha_contact_enable) == \App\Setting::SITE_RECAPTCHA_CONTACT_ENABLE ? 'checked' : ''); ?>>
                                    <label class="custom-control-label" for="setting_site_recaptcha_contact_enable"><?php echo e(__('recaptcha.enable-contact')); ?></label>
                                </div>
                                <?php $__errorArgs = ['setting_site_recaptcha_contact_enable'];
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
                            <div class="col-12">

                                <div class="custom-control custom-checkbox">
                                    <input value="<?php echo e(\App\Setting::SITE_RECAPTCHA_ITEM_LEAD_ENABLE); ?>" name="setting_site_recaptcha_item_lead_enable" type="checkbox" class="custom-control-input" id="setting_site_recaptcha_item_lead_enable" <?php echo e((old('setting_site_recaptcha_item_lead_enable') ? old('setting_site_recaptcha_item_lead_enable') : $all_recaptcha_settings->setting_site_recaptcha_item_lead_enable) == \App\Setting::SITE_RECAPTCHA_ITEM_LEAD_ENABLE ? 'checked' : ''); ?>>
                                    <label class="custom-control-label" for="setting_site_recaptcha_item_lead_enable"><?php echo e(__('role_permission.setting.item-lead-enable')); ?></label>
                                </div>
                                <?php $__errorArgs = ['setting_site_recaptcha_item_lead_enable'];
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

                            <div class="col-md-6 col-sm-12">

                                <label class="text-black" for="setting_site_recaptcha_site_key"><?php echo e(__('recaptcha.recaptcha-site-key')); ?></label>
                                <input id="setting_site_recaptcha_site_key" type="text" class="form-control <?php $__errorArgs = ['setting_site_recaptcha_site_key'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="setting_site_recaptcha_site_key" value="<?php echo e(old('setting_site_recaptcha_site_key') ? old('setting_site_recaptcha_site_key') : $all_recaptcha_settings->setting_site_recaptcha_site_key); ?>">
                                <?php $__errorArgs = ['setting_site_recaptcha_site_key'];
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

                            <div class="col-md-6 col-sm-12">

                                <label class="text-black" for="setting_site_recaptcha_secret_key"><?php echo e(__('recaptcha.recaptcha-site-secret')); ?></label>
                                <input id="setting_site_recaptcha_secret_key" type="text" class="form-control <?php $__errorArgs = ['setting_site_recaptcha_secret_key'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="setting_site_recaptcha_secret_key" value="<?php echo e(old('setting_site_recaptcha_secret_key') ? old('setting_site_recaptcha_secret_key') : $all_recaptcha_settings->setting_site_recaptcha_secret_key); ?>">
                                <?php $__errorArgs = ['setting_site_recaptcha_secret_key'];
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

<?php echo $__env->make('backend.admin.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home4/uaenurse/public_html/menteybody/laravel_project/resources/views/backend/admin/setting/recaptcha/edit.blade.php ENDPATH**/ ?>