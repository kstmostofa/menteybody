<?php $__env->startSection('styles'); ?>
    <link href="<?php echo e(asset('backend/vendor/spectrum/spectrum.min.css')); ?>" rel="stylesheet">
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <div class="row justify-content-between">
        <div class="col-9">
            <h1 class="h3 mb-2 text-gray-800"><?php echo e(__('customization.color')); ?></h1>
            <p class="mb-4"><?php echo e(__('customization.color-desc')); ?></p>
        </div>
        <div class="col-3 text-right">
        </div>
    </div>

    <!-- Content Row -->
    <div class="row bg-white pt-4 pl-3 pr-3 pb-4">
        <div class="col-12">


            <div class="row">
                <div class="col-12 col-md-10 col-lg-6">
                    <form method="POST" action="<?php echo e(route('admin.customization.color.update')); ?>">
                        <?php echo csrf_field(); ?>

                        <div class="row mb-2">
                            <div class="col-12">
                                <span><?php echo e(__('customization.site-primary-color')); ?></span>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <div class="col-12">
                                <input id="site_primary_color" class="color-picker-input" name="site_primary_color" value="<?php echo e(old('site_primary_color') ? old('site_primary_color') : $site_primary_color); ?>">
                                <?php $__errorArgs = ['site_primary_color'];
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

                        <div class="row mb-2">
                            <div class="col-12">
                                <span><?php echo e(__('customization.site-header-background-color')); ?></span>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <div class="col-6">
                                <input id="site_header_background_color" class="color-picker-input" name="site_header_background_color" value="<?php echo e(old('site_header_background_color') ? old('site_header_background_color') : $site_header_background_color); ?>">
                                <?php $__errorArgs = ['site_header_background_color'];
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


                        <div class="row mb-2">
                            <div class="col-12">
                                <span><?php echo e(__('customization.site-header-font-color')); ?></span>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <div class="col-6">
                                <input id="site_header_font_color" class="color-picker-input" name="site_header_font_color" value="<?php echo e(old('site_header_font_color') ? old('site_header_font_color') : $site_header_font_color); ?>">
                                <?php $__errorArgs = ['site_header_font_color'];
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


                        <div class="row mb-2">
                            <div class="col-12">
                                <span><?php echo e(__('customization.site-footer-background-color')); ?></span>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <div class="col-6">
                                <input id="site_footer_background_color" class="color-picker-input" name="site_footer_background_color" value="<?php echo e(old('site_footer_background_color') ? old('site_footer_background_color') : $site_footer_background_color); ?>">
                                <?php $__errorArgs = ['site_footer_background_color'];
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


                        <div class="row mb-2">
                            <div class="col-12">
                                <span><?php echo e(__('customization.site-footer-font-color')); ?></span>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <div class="col-6">
                                <input id="site_footer_font_color" class="color-picker-input" name="site_footer_font_color" value="<?php echo e(old('site_footer_font_color') ? old('site_footer_font_color') : $site_footer_font_color); ?>">
                                <?php $__errorArgs = ['site_footer_font_color'];
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

                        <div class="row mb-2">
                            <div class="col-6">
                                <button type="submit" class="btn btn-success text-white">
                                    <?php echo e(__('backend.shared.update')); ?>

                                </button>
                            </div>
                            <div class="col-6 text-right">
                                <a class="text-info" href="#" data-toggle="modal" data-target="#restoreModal">
                                    <?php echo e(__('customization.restore')); ?>

                                </a>
                            </div>
                        </div>

                    </form>
                </div>
            </div>


        </div>
    </div>

    <!-- Restore Default Modal -->
    <div class="modal fade" id="restoreModal" tabindex="-1" role="dialog" aria-labelledby="restoreModal" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle"><?php echo e(__('customization.restore')); ?></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <?php echo e(__('customization.restore-confirm')); ?>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal"><?php echo e(__('backend.shared.cancel')); ?></button>
                    <form action="<?php echo e(route('admin.customization.color.restore')); ?>" method="POST">
                        <?php echo csrf_field(); ?>
                        <button type="submit" class="btn btn-info"><?php echo e(__('customization.restore-confirm-button')); ?></button>
                    </form>
                </div>
            </div>
        </div>
    </div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('scripts'); ?>
    <script src="<?php echo e(asset('backend/vendor/spectrum/spectrum.min.js')); ?>"></script>
    <script>
        $(document).ready(function(){

            "use strict";

            $('#site_primary_color').spectrum({
                type: "component",
                togglePaletteOnly: "true",
                showInput: "true",
                showInitial: "true",
                showAlpha: "false"
            });

            $('#site_header_background_color').spectrum({
                type: "component",
                togglePaletteOnly: "true",
                showInput: "true",
                showInitial: "true",
                showAlpha: "false"
            });

            $('#site_header_font_color').spectrum({
                type: "component",
                togglePaletteOnly: "true",
                showInput: "true",
                showInitial: "true",
                showAlpha: "false"
            });

            $('#site_footer_background_color').spectrum({
                type: "component",
                togglePaletteOnly: "true",
                showInput: "true",
                showInitial: "true",
                showAlpha: "false"
            });

            $('#site_footer_font_color').spectrum({
                type: "component",
                togglePaletteOnly: "true",
                showInput: "true",
                showInitial: "true",
                showAlpha: "false"
            });
        });
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.admin.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home4/uaenurse/public_html/menteybody/laravel_project/resources/views/backend/admin/customization/color/edit.blade.php ENDPATH**/ ?>