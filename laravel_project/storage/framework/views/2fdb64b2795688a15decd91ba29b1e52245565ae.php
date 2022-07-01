<?php $__env->startSection('styles'); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <div class="row justify-content-between">
        <div class="col-9">
            <h1 class="h3 mb-2 text-gray-800"><?php echo e(__('paypal.edit-paypal-setting')); ?></h1>
            <p class="mb-4"><?php echo e(__('paypal.edit-paypal-setting-desc')); ?></p>
        </div>
    </div>

    <!-- Content Row -->
    <div class="row bg-white pt-4 pl-3 pr-3 pb-4">
        <div class="col-12">
            <div class="row">
                <div class="col-12">
                    <form method="POST" action="<?php echo e(route('admin.settings.payment.paypal.update')); ?>" class="">
                        <?php echo csrf_field(); ?>

                        <div class="row form-group">
                            <div class="col-12">
                                <?php if($all_paypal_settings->setting_site_paypal_enable == \App\Setting::SITE_PAYMENT_PAYPAL_ENABLE): ?>
                                    <span class="pl-2 pr-2 pt-1 pb-1 bg-success text-white rounded"><?php echo e(__('paypal.paypal-enabled')); ?></span>
                                <?php else: ?>
                                    <span class="pl-2 pr-2 pt-1 pb-1 bg-warning text-white rounded"><?php echo e(__('paypal.paypal-disabled')); ?></span>
                                <?php endif; ?>
                            </div>
                        </div>

                        <div class="row form-group">
                            <div class="col-12">
                                <span><?php echo e(__('payment.paypal-ipn')); ?>: <?php echo e(route('user.paypal.notify')); ?></span>
                            </div>
                        </div>
                        <hr>

                        <div class="row form-group">
                            <div class="col-12">

                                <div class="custom-control custom-checkbox">
                                    <input value="<?php echo e(\App\Setting::SITE_PAYMENT_PAYPAL_ENABLE); ?>" name="setting_site_paypal_enable" type="checkbox" class="custom-control-input" id="setting_site_paypal_enable" <?php echo e((old('setting_site_paypal_enable') ? old('setting_site_paypal_enable') : $all_paypal_settings->setting_site_paypal_enable) == \App\Setting::SITE_PAYMENT_PAYPAL_ENABLE ? 'checked' : ''); ?>>
                                    <label class="custom-control-label" for="setting_site_paypal_enable"><?php echo e(__('paypal.enable-paypal')); ?></label>
                                </div>
                                <?php $__errorArgs = ['setting_site_paypal_enable'];
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

                                <label class="text-black" for="setting_site_paypal_mode"><?php echo e(__('backend.setting.mode')); ?></label>
                                <select class="custom-select <?php $__errorArgs = ['setting_site_paypal_mode'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="setting_site_paypal_mode">
                                    <option value="<?php echo e(\App\Setting::SITE_PAYMENT_PAYPAL_SANDBOX); ?>" <?php echo e((old('setting_site_paypal_mode') ? old('setting_site_paypal_mode') : $all_paypal_settings->setting_site_paypal_mode) == \App\Setting::SITE_PAYMENT_PAYPAL_SANDBOX ? 'selected' : ''); ?>><?php echo e(__('paypal.paypal-sandbox')); ?></option>
                                    <option value="<?php echo e(\App\Setting::SITE_PAYMENT_PAYPAL_LIVE); ?>" <?php echo e((old('setting_site_paypal_mode') ? old('setting_site_paypal_mode') : $all_paypal_settings->setting_site_paypal_mode) == \App\Setting::SITE_PAYMENT_PAYPAL_LIVE ? 'selected' : ''); ?>><?php echo e(__('paypal.paypal-live')); ?></option>
                                </select>
                                <?php $__errorArgs = ['setting_site_paypal_mode'];
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

                                <label class="text-black" for="setting_site_paypal_currency"><?php echo e(__('backend.setting.currency')); ?></label>
                                <select class="custom-select <?php $__errorArgs = ['setting_site_paypal_currency'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="setting_site_paypal_currency">
                                    <option value="USD" <?php echo e($all_paypal_settings->setting_site_paypal_currency == 'USD' ? 'selected' : ''); ?>>United States dollar - USD</option>
                                    <option value="AUD" <?php echo e($all_paypal_settings->setting_site_paypal_currency == 'AUD' ? 'selected' : ''); ?>>Australian dollar - AUD</option>
                                    <option value="BRL" <?php echo e($all_paypal_settings->setting_site_paypal_currency == 'BRL' ? 'selected' : ''); ?>>Brazilian real - BRL</option>
                                    <option value="CAD" <?php echo e($all_paypal_settings->setting_site_paypal_currency == 'CAD' ? 'selected' : ''); ?>>Canadian dollar - CAD</option>
                                    <option value="CZK" <?php echo e($all_paypal_settings->setting_site_paypal_currency == 'CZK' ? 'selected' : ''); ?>>Czech koruna - CZK</option>
                                    <option value="DKK" <?php echo e($all_paypal_settings->setting_site_paypal_currency == 'DKK' ? 'selected' : ''); ?>>Danish krone - DKK</option>
                                    <option value="EUR" <?php echo e($all_paypal_settings->setting_site_paypal_currency == 'EUR' ? 'selected' : ''); ?>>Euro - EUR</option>
                                    <option value="HKD" <?php echo e($all_paypal_settings->setting_site_paypal_currency == 'HKD' ? 'selected' : ''); ?>>Hong Kong dollar - HKD</option>
                                    <option value="INR" <?php echo e($all_paypal_settings->setting_site_paypal_currency == 'INR' ? 'selected' : ''); ?>>Indian rupee - INR</option>
                                    <option value="ILS" <?php echo e($all_paypal_settings->setting_site_paypal_currency == 'ILS' ? 'selected' : ''); ?>>Israeli new shekel - ILS</option>
                                    <option value="MXN" <?php echo e($all_paypal_settings->setting_site_paypal_currency == 'MXN' ? 'selected' : ''); ?>>Mexican peso - MXN</option>
                                    <option value="NZD" <?php echo e($all_paypal_settings->setting_site_paypal_currency == 'NZD' ? 'selected' : ''); ?>>New Zealand dollar - NZD</option>
                                    <option value="NOK" <?php echo e($all_paypal_settings->setting_site_paypal_currency == 'NOK' ? 'selected' : ''); ?>>Norwegian krone - MOK</option>
                                    <option value="PHP" <?php echo e($all_paypal_settings->setting_site_paypal_currency == 'PHP' ? 'selected' : ''); ?>>Philippine peso - PHP</option>
                                    <option value="PLN" <?php echo e($all_paypal_settings->setting_site_paypal_currency == 'PLN' ? 'selected' : ''); ?>>Polish złoty - PLN</option>
                                    <option value="GBP" <?php echo e($all_paypal_settings->setting_site_paypal_currency == 'GBP' ? 'selected' : ''); ?>>Pound sterling - GBP</option>
                                    <option value="RUB" <?php echo e($all_paypal_settings->setting_site_paypal_currency == 'RUB' ? 'selected' : ''); ?>>Russian ruble - RUB</option>
                                    <option value="SGD" <?php echo e($all_paypal_settings->setting_site_paypal_currency == 'SGD' ? 'selected' : ''); ?>>Singapore dollar - SGD</option>
                                    <option value="SEK" <?php echo e($all_paypal_settings->setting_site_paypal_currency == 'SEK' ? 'selected' : ''); ?>>Swedish krona - SEK</option>
                                    <option value="CHF" <?php echo e($all_paypal_settings->setting_site_paypal_currency == 'CHF' ? 'selected' : ''); ?>>Swiss franc - CHF</option>
                                    <option value="THB" <?php echo e($all_paypal_settings->setting_site_paypal_currency == 'THB' ? 'selected' : ''); ?>>Thai baht - THB</option>
                                </select>
                                <?php $__errorArgs = ['setting_site_paypal_currency'];
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

                                <label class="text-black" for="setting_site_paypal_sandbox_username"><?php echo e(__('backend.setting.sandbox-username')); ?></label>
                                <input id="setting_site_paypal_sandbox_username" type="text" class="form-control <?php $__errorArgs = ['setting_site_paypal_sandbox_username'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="setting_site_paypal_sandbox_username" value="<?php echo e(old('setting_site_paypal_sandbox_username') ? old('setting_site_paypal_sandbox_username') : $all_paypal_settings->setting_site_paypal_sandbox_username); ?>">
                                <?php $__errorArgs = ['setting_site_paypal_sandbox_username'];
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
                                <label class="text-black" for="setting_site_paypal_sandbox_password"><?php echo e(__('backend.setting.sandbox-password')); ?></label>
                                <input id="setting_site_paypal_sandbox_password" type="text" class="form-control <?php $__errorArgs = ['setting_site_paypal_sandbox_password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="setting_site_paypal_sandbox_password" value="<?php echo e(old('setting_site_paypal_sandbox_password') ? old('setting_site_paypal_sandbox_password') : $all_paypal_settings->setting_site_paypal_sandbox_password); ?>">
                                <?php $__errorArgs = ['setting_site_paypal_sandbox_password'];
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

                                <label class="text-black" for="setting_site_paypal_sandbox_secret"><?php echo e(__('backend.setting.sandbox-secret')); ?></label>
                                <input id="setting_site_paypal_sandbox_secret" type="text" class="form-control <?php $__errorArgs = ['setting_site_paypal_sandbox_secret'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="setting_site_paypal_sandbox_secret" value="<?php echo e(old('setting_site_paypal_sandbox_secret') ? old('setting_site_paypal_sandbox_secret') : $all_paypal_settings->setting_site_paypal_sandbox_secret); ?>">
                                <?php $__errorArgs = ['setting_site_paypal_sandbox_secret'];
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
                                <label class="text-black" for="setting_site_paypal_sandbox_certificate"><?php echo e(__('backend.setting.sandbox-certificate')); ?></label>
                                <input id="setting_site_paypal_sandbox_certificate" type="text" class="form-control <?php $__errorArgs = ['setting_site_paypal_sandbox_certificate'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="setting_site_paypal_sandbox_certificate" value="<?php echo e(old('setting_site_paypal_sandbox_certificate') ? old('setting_site_paypal_sandbox_certificate') : $all_paypal_settings->setting_site_paypal_sandbox_certificate); ?>">
                                <?php $__errorArgs = ['setting_site_paypal_sandbox_certificate'];
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

                                <label class="text-black" for="setting_site_paypal_live_username"><?php echo e(__('backend.setting.live-username')); ?></label>
                                <input id="setting_site_paypal_live_username" type="text" class="form-control <?php $__errorArgs = ['setting_site_paypal_live_username'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="setting_site_paypal_live_username" value="<?php echo e(old('setting_site_paypal_live_username') ? old('setting_site_paypal_live_username') : $all_paypal_settings->setting_site_paypal_live_username); ?>">
                                <?php $__errorArgs = ['setting_site_paypal_live_username'];
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
                                <label class="text-black" for="setting_site_paypal_live_password"><?php echo e(__('backend.setting.live-password')); ?></label>
                                <input id="setting_site_paypal_live_password" type="text" class="form-control <?php $__errorArgs = ['setting_site_paypal_live_password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="setting_site_paypal_live_password" value="<?php echo e(old('setting_site_paypal_live_password') ? old('setting_site_paypal_live_password') : $all_paypal_settings->setting_site_paypal_live_password); ?>">
                                <?php $__errorArgs = ['setting_site_paypal_live_password'];
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

                                <label class="text-black" for="setting_site_paypal_live_secret"><?php echo e(__('backend.setting.live-secret')); ?></label>
                                <input id="setting_site_paypal_live_secret" type="text" class="form-control <?php $__errorArgs = ['setting_site_paypal_live_secret'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="setting_site_paypal_live_secret" value="<?php echo e(old('setting_site_paypal_live_secret') ? old('setting_site_paypal_live_secret') : $all_paypal_settings->setting_site_paypal_live_secret); ?>">
                                <?php $__errorArgs = ['setting_site_paypal_live_secret'];
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
                                <label class="text-black" for="setting_site_paypal_live_certificate"><?php echo e(__('backend.setting.live-certificate')); ?></label>
                                <input id="setting_site_paypal_live_certificate" type="text" class="form-control <?php $__errorArgs = ['setting_site_paypal_live_certificate'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="setting_site_paypal_live_certificate" value="<?php echo e(old('setting_site_paypal_live_certificate') ? old('setting_site_paypal_live_certificate') : $all_paypal_settings->setting_site_paypal_live_certificate); ?>">
                                <?php $__errorArgs = ['setting_site_paypal_live_certificate'];
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

<?php echo $__env->make('backend.admin.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home4/uaenurse/public_html/menteybody/laravel_project/resources/views/backend/admin/setting/payment/paypal/edit.blade.php ENDPATH**/ ?>