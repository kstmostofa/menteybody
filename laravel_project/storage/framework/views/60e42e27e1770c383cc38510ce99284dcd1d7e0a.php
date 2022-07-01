<?php $__env->startSection('styles'); ?>
    <link href="<?php echo e(asset('backend/vendor/bootstrap-select/bootstrap-select.min.css')); ?>" rel="stylesheet" />
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <div class="row justify-content-between">
        <div class="col-9">
            <h1 class="h3 mb-2 text-gray-800"><?php echo e(__('role_permission.item-leads.admin-edit')); ?></h1>
            <p class="mb-4"><?php echo e(__('role_permission.item-leads.admin-edit-desc')); ?></p>
        </div>
        <div class="col-3 text-right">
            <a href="<?php echo e(route('user.item-leads.index')); ?>" class="btn btn-info btn-icon-split">
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

                <div class="col-12 col-md-8 col-lg-6">
                    <form method="POST" action="<?php echo e(route('user.item-leads.update', ['item_lead' => $item_lead])); ?>" class="">
                        <?php echo csrf_field(); ?>
                        <?php echo method_field('PUT'); ?>
                        <div class="row form-group">
                            <div class="col-md-12">
                                <label for="item_slug" class="text-black"><?php echo e(__('role_permission.item-leads.listing')); ?></label>
                                <select id="item_slug" class="selectpicker form-control <?php $__errorArgs = ['item_slug'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="item_slug" data-live-search="true">
                                    <option value="0"><?php echo e(__('role_permission.item-leads.listing-default')); ?></option>
                                    <?php $__currentLoopData = $items; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $items_key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <?php if($item->item_type == \App\Item::ITEM_TYPE_REGULAR): ?>
                                            <option value="<?php echo e($item->item_slug); ?>" <?php echo e((old('item_slug') ? old('item_slug') : $item_lead->item_id) == $item->id ? 'selected' : ''); ?>><?php echo e($item->item_title . ' | ' . $item->city->city_name . ', ' . $item->state->state_name . ', ' . $item->country->country_name); ?></option>
                                        <?php elseif($item->item_type == \App\Item::ITEM_TYPE_ONLINE): ?>
                                            <option value="<?php echo e($item->item_slug); ?>" <?php echo e((old('item_slug') ? old('item_slug') : $item_lead->item_id) == $item->id ? 'selected' : ''); ?>><?php echo e($item->item_title . ' | ' . __('theme_directory_hub.online-listing.online-listing')); ?></option>
                                        <?php endif; ?>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </select>
                                <small class="form-text text-muted">
                                    <?php echo e(__('role_permission.item-leads.listing-help')); ?>

                                </small>
                                <?php $__errorArgs = ['item_slug'];
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
                                <label for="item_lead_name" class="text-black"><?php echo e(__('role_permission.item-leads.item-lead-name')); ?></label>
                                <input id="item_lead_name" type="text" class="form-control <?php $__errorArgs = ['item_lead_name'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="item_lead_name" value="<?php echo e(old('item_lead_name') ? old('item_lead_name') : $item_lead->item_lead_name); ?>">
                                <?php $__errorArgs = ['item_lead_name'];
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
                                <label for="item_lead_email" class="text-black"><?php echo e(__('role_permission.item-leads.item-lead-email')); ?></label>
                                <input id="item_lead_email" type="text" class="form-control <?php $__errorArgs = ['item_lead_email'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="item_lead_email" value="<?php echo e(old('item_lead_email') ? old('item_lead_email') : $item_lead->item_lead_email); ?>">
                                <?php $__errorArgs = ['item_lead_email'];
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
                                <label for="item_lead_phone" class="text-black"><?php echo e(__('role_permission.item-leads.item-lead-phone')); ?></label>
                                <input id="item_lead_phone" type="text" class="form-control <?php $__errorArgs = ['item_lead_phone'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="item_lead_phone" value="<?php echo e(old('item_lead_phone') ? old('item_lead_phone') : $item_lead->item_lead_phone); ?>">
                                <?php $__errorArgs = ['item_lead_phone'];
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
                                <label for="item_lead_subject" class="text-black"><?php echo e(__('role_permission.item-leads.item-lead-subject')); ?></label>
                                <input id="item_lead_subject" type="text" class="form-control <?php $__errorArgs = ['item_lead_subject'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="item_lead_subject" value="<?php echo e(old('item_lead_subject') ? old('item_lead_subject') : $item_lead->item_lead_subject); ?>">
                                <?php $__errorArgs = ['item_lead_subject'];
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
                                <label class="text-black" for="item_lead_message"><?php echo e(__('role_permission.item-leads.item-lead-message')); ?></label>
                                <textarea rows="6" id="item_lead_message" type="text" class="form-control <?php $__errorArgs = ['item_lead_message'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="item_lead_message"><?php echo e(old('item_lead_message') ? old('item_lead_message') : $item_lead->item_lead_message); ?></textarea>
                                <?php $__errorArgs = ['item_lead_message'];
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
                    <p><?php echo e(__('backend.shared.delete-message', ['record_type' => __('role_permission.item-leads.item-leads'), 'record_name' => $item_lead->item_lead_name . ' - ' . $item_lead->item_lead_email])); ?></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal"><?php echo e(__('backend.shared.cancel')); ?></button>
                    <form action="<?php echo e(route('user.item-leads.destroy', ['item_lead' => $item_lead])); ?>" method="POST">
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

    <script src="<?php echo e(asset('backend/vendor/bootstrap-select/bootstrap-select.min.js')); ?>"></script>
    <?php echo $__env->make('backend.user.partials.bootstrap-select-locale', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.user.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home4/uaenurse/public_html/menteybody/laravel_project/resources/views/backend/user/item/item-lead/edit.blade.php ENDPATH**/ ?>