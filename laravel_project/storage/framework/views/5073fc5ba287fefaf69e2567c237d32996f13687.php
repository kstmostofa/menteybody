<?php $__env->startSection('styles'); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <div class="row justify-content-between">
        <div class="col-9">
            <h1 class="h3 mb-2 text-gray-800"><?php echo e(__('backend.message.add-message')); ?></h1>
            <p class="mb-4"><?php echo e(__('backend.message.add-message-desc-user')); ?></p>
        </div>
        <div class="col-3 text-right">
            <a href="<?php echo e(route('user.messages.index')); ?>" class="btn btn-info btn-icon-split">
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
            <div class="row mb-5">
                <div class="col-3">
                    <?php if(empty($item->item_image)): ?>
                        <img id="image_preview" src="<?php echo e(asset('backend/images/placeholder/full_item_feature_image.webp')); ?>" class="img-responsive rounded">
                    <?php else: ?>
                        <img id="image_preview" src="<?php echo e(Storage::disk('public')->url('item/'. $item->item_image)); ?>" class="img-responsive rounded">
                    <?php endif; ?>

                        <a href="<?php echo e(route('page.item', $item->item_slug)); ?>" class="btn btn-primary btn-block mt-2"><?php echo e(__('backend.message.view-listing')); ?></a>

                </div>
                <div class="col-9">
                    <p>
                        <?php $__currentLoopData = $item->allCategories()->get(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <span class="bg-info rounded text-white pl-2 pr-2 pt-1 pb-1 mr-1">
                                <?php echo e($category->category_name); ?>

                            </span>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </p>
                    <h1 class="h4 mb-2 text-gray-800"><?php echo e($item->item_title); ?></h1>
                    <p class="mb-4">
                        <?php if($item->item_type == \App\Item::ITEM_TYPE_REGULAR): ?>
                        <?php echo e($item->item_address_hide == \App\Item::ITEM_ADDR_NOT_HIDE ? $item->item_address . ', ' : ''); ?> <?php echo e($item->city->city_name . ', ' . $item->state->state_name . ' ' . $item->item_postal_code); ?>

                        <?php else: ?>
                            <span class="bg-primary text-white pl-1 pr-1 rounded"><?php echo e(__('theme_directory_hub.online-listing.online-listing')); ?></span>
                        <?php endif; ?>
                    </p>
                    <hr/>
                    <p class="mb-4"><?php echo e($item->item_description); ?></p>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <form method="POST" action="<?php echo e(route('user.messages.store')); ?>" class="">
                        <?php echo csrf_field(); ?>

                        <div class="form-row mb-3">
                            <div class="col-md-12">
                                <label for="subject" class="text-black"><?php echo e(__('backend.message.subject')); ?></label>
                                <input id="subject" type="text" class="form-control <?php $__errorArgs = ['subject'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="subject" value="<?php echo e(old('subject')); ?>" autofocus>
                                <?php $__errorArgs = ['subject'];
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

                        <div class="form-row mb-3">

                            <div class="col-md-12">
                                <label class="text-black" for="message"><?php echo e(__('backend.message.message-txt')); ?></label>
                                <textarea rows="6" id="message" type="text" class="form-control <?php $__errorArgs = ['message'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="message"><?php echo e(old('message')); ?></textarea>
                                <?php $__errorArgs = ['message'];
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

                        <div class="form-row mb-3">
                            <div class="col-md-12">
                                <input type="hidden" name="recipient" value="<?php echo e($item->user_id); ?>">
                                <input type="hidden" name="item" value="<?php echo e($item->id); ?>">
                            </div>
                        </div>

                        <div class="form-row mb-3">
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-success py-2 px-4 text-white">
                                    <?php echo e(__('backend.message.send')); ?>

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

<?php echo $__env->make('backend.user.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home4/uaenurse/public_html/menteybody/laravel_project/resources/views/backend/user/message/create.blade.php ENDPATH**/ ?>