<?php $__env->startSection('styles'); ?>
    <link href="<?php echo e(asset('backend/vendor/simplemde/dist/simplemde.min.css')); ?>" rel="stylesheet" />
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <div class="row justify-content-between">
        <div class="col-9">
            <h1 class="h3 mb-2 text-gray-800"><?php echo e(__('advertisement.add-ad')); ?></h1>
            <p class="mb-4"><?php echo e(__('advertisement.add-ad-desc')); ?></p>
        </div>
        <div class="col-3 text-right">
            <a href="<?php echo e(route('admin.advertisements.index')); ?>" class="btn btn-info btn-icon-split">
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

            <div class="row mb-4">
                <div class="col-12">
                    <div class="row mb-2">
                        <div class="col-12">
                            <form class="form-inline" action="<?php echo e(route('admin.advertisements.create')); ?>" method="GET">
                                <div class="form-group mr-2">
                                    <select class="custom-select <?php $__errorArgs = ['advertisement_place'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="advertisement_place" onchange="$('#ad-create-form').remove();">
                                        <option value="0"><?php echo e(__('advertisement.select-ad-place')); ?></option>
                                        <option value="<?php echo e(\App\Advertisement::AD_PLACE_LISTING_RESULTS_PAGES); ?>" <?php echo e($advertisement_place == \App\Advertisement::AD_PLACE_LISTING_RESULTS_PAGES ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-place-listing-results')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_PLACE_LISTING_SEARCH_PAGE); ?>" <?php echo e($advertisement_place == \App\Advertisement::AD_PLACE_LISTING_SEARCH_PAGE ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-place-listing-search')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_PLACE_BUSINESS_LISTING_PAGE); ?>" <?php echo e($advertisement_place == \App\Advertisement::AD_PLACE_BUSINESS_LISTING_PAGE ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-place-business-listing')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_PLACE_BLOG_POSTS_PAGES); ?>" <?php echo e($advertisement_place == \App\Advertisement::AD_PLACE_BLOG_POSTS_PAGES ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-place-blog-posts')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_PLACE_BLOG_TOPIC_PAGES); ?>" <?php echo e($advertisement_place == \App\Advertisement::AD_PLACE_BLOG_TOPIC_PAGES ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-place-blog-topic')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_PLACE_BLOG_TAG_PAGES); ?>" <?php echo e($advertisement_place == \App\Advertisement::AD_PLACE_BLOG_TAG_PAGES ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-place-blog-tag')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_PLACE_SINGLE_POST_PAGE); ?>" <?php echo e($advertisement_place == \App\Advertisement::AD_PLACE_SINGLE_POST_PAGE ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-place-single-post')); ?>

                                        </option>
                                    </select>
                                    <?php $__errorArgs = ['ad_place'];
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
                                <button type="submit" class="btn btn-primary mr-2"><?php echo e(__('advertisement.load-form')); ?></button>
                            </form>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-12">
                            <a class="btn btn-sm btn-outline-info rounded text-info" id="create-ad-page-help">
                                <i class="fas fa-question-circle"></i>
                                <?php echo e(__('advertisement.create-ad-page-help')); ?>

                            </a>
                        </div>
                    </div>
                </div>
            </div>



            <div class="row">
                <div class="col-12 col-md-10 col-lg-6">
                    <?php if($advertisement_place > 0): ?>
                    <form id="ad-create-form" method="POST" action="<?php echo e(route('admin.advertisements.store')); ?>">
                        <?php echo csrf_field(); ?>

                        <input name="advertisement_place" value="<?php echo e($advertisement_place); ?>" type="hidden" id="input_advertisement_place">

                        <div class="row form-group">
                            <div class="col-md-12">
                                <label for="advertisement_name" class="text-black"><?php echo e(__('advertisement.ad-name')); ?></label>
                                <input id="advertisement_name" type="text" class="form-control <?php $__errorArgs = ['advertisement_name'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="advertisement_name" value="<?php echo e(old('advertisement_name')); ?>" autofocus>
                                <?php $__errorArgs = ['advertisement_name'];
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
                                <label class="text-black" for="advertisement_code"><?php echo e(__('advertisement.ad-code')); ?></label>
                                <textarea rows="6" id="advertisement_code" type="text" class="form-control <?php $__errorArgs = ['advertisement_code'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="advertisement_code"><?php echo e(old('advertisement_code')); ?></textarea>
                                <?php $__errorArgs = ['advertisement_code'];
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
                                <label class="text-black" for="advertisement_status"><?php echo e(__('advertisement.ad-status')); ?></label>

                                <select class="custom-select <?php $__errorArgs = ['advertisement_status'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="advertisement_status">
                                    <option value="<?php echo e(\App\Advertisement::AD_STATUS_ENABLE); ?>" <?php echo e(old('advertisement_status') == \App\Advertisement::AD_STATUS_ENABLE ? 'selected' : ''); ?>><?php echo e(__('advertisement.ad-status-enable')); ?></option>
                                    <option value="<?php echo e(\App\Advertisement::AD_STATUS_DISABLE); ?>" <?php echo e(old('advertisement_status') == \App\Advertisement::AD_STATUS_DISABLE ? 'selected' : ''); ?>><?php echo e(__('advertisement.ad-status-disable')); ?></option>
                                </select>
                                <?php $__errorArgs = ['advertisement_status'];
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

                            <div class="col-md-6">
                                <label class="text-black" for="advertisement_position"><?php echo e(__('advertisement.ad-position')); ?></label>
                                <select class="custom-select <?php $__errorArgs = ['advertisement_position'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="advertisement_position">

                                    <?php if($advertisement_place == 1 || $advertisement_place == 2): ?>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_BEFORE_BREADCRUMB); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_BEFORE_BREADCRUMB ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-before-breadcrumb')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_AFTER_BREADCRUMB); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_AFTER_BREADCRUMB ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-after-breadcrumb')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_BEFORE_CONTENT); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_BEFORE_CONTENT ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-before-content')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_AFTER_CONTENT); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_AFTER_CONTENT ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-after-content')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_SIDEBAR_BEFORE_CONTENT); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_SIDEBAR_BEFORE_CONTENT ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-sidebar-before-content')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_SIDEBAR_AFTER_CONTENT); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_SIDEBAR_AFTER_CONTENT ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-sidebar-after-content')); ?>

                                        </option>
                                    <?php elseif($advertisement_place == 3): ?>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_BEFORE_BREADCRUMB); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_BEFORE_BREADCRUMB ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-before-breadcrumb')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_AFTER_BREADCRUMB); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_AFTER_BREADCRUMB ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-after-breadcrumb')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_BEFORE_GALLERY); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_BEFORE_GALLERY ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-before-gallery')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_BEFORE_DESCRIPTION); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_BEFORE_DESCRIPTION ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-before-description')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_BEFORE_LOCATION); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_BEFORE_LOCATION ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-before-location')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_BEFORE_FEATURES); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_BEFORE_FEATURES ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-before-features')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_BEFORE_REVIEWS); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_BEFORE_REVIEWS ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-before-reviews')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_BEFORE_COMMENTS); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_BEFORE_COMMENTS ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-before-comments')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_BEFORE_SHARE); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_BEFORE_SHARE ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-before-share')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_AFTER_SHARE); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_AFTER_SHARE ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-after-share')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_SIDEBAR_BEFORE_CONTENT); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_SIDEBAR_BEFORE_CONTENT ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-sidebar-before-content')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_SIDEBAR_AFTER_CONTENT); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_SIDEBAR_AFTER_CONTENT ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-sidebar-after-content')); ?>

                                        </option>
                                    <?php elseif($advertisement_place == 4 || $advertisement_place == 5 || $advertisement_place == 6): ?>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_BEFORE_BREADCRUMB); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_BEFORE_BREADCRUMB ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-before-breadcrumb')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_AFTER_BREADCRUMB); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_AFTER_BREADCRUMB ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-after-breadcrumb')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_BEFORE_CONTENT); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_BEFORE_CONTENT ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-before-content')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_AFTER_CONTENT); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_AFTER_CONTENT ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-after-content')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_SIDEBAR_BEFORE_CONTENT); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_SIDEBAR_BEFORE_CONTENT ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-sidebar-before-content')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_SIDEBAR_AFTER_CONTENT); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_SIDEBAR_AFTER_CONTENT ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-sidebar-after-content')); ?>

                                        </option>
                                    <?php elseif($advertisement_place == 7): ?>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_BEFORE_BREADCRUMB); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_BEFORE_BREADCRUMB ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-before-breadcrumb')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_AFTER_BREADCRUMB); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_AFTER_BREADCRUMB ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-after-breadcrumb')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_BEFORE_FEATURE_IMAGE); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_BEFORE_FEATURE_IMAGE ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-before-feature-image')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_BEFORE_TITLE); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_BEFORE_TITLE ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-before-title')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_BEFORE_POST_CONTENT); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_BEFORE_POST_CONTENT ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-before-post-content')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_AFTER_POST_CONTENT); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_AFTER_POST_CONTENT ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-after-post-content')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_BEFORE_COMMENTS); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_BEFORE_COMMENTS ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-before-comments')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_BEFORE_SHARE); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_BEFORE_SHARE ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-before-share')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_AFTER_SHARE); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_AFTER_SHARE ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-after-share')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_SIDEBAR_BEFORE_CONTENT); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_SIDEBAR_BEFORE_CONTENT ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-sidebar-before-content')); ?>

                                        </option>
                                        <option value="<?php echo e(\App\Advertisement::AD_POSITION_SIDEBAR_AFTER_CONTENT); ?>" <?php echo e(old('advertisement_position') == \App\Advertisement::AD_POSITION_SIDEBAR_AFTER_CONTENT ? 'selected' : ''); ?>>
                                            <?php echo e(__('advertisement.ad-position-sidebar-after-content')); ?>

                                        </option>
                                    <?php endif; ?>

                                </select>
                                <?php $__errorArgs = ['advertisement_position'];
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
                                <label class="text-black" for="advertisement_alignment"><?php echo e(__('advertisement.ad-alignment')); ?></label>

                                <select class="custom-select <?php $__errorArgs = ['advertisement_alignment'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="advertisement_alignment">
                                    <option value="<?php echo e(\App\Advertisement::AD_ALIGNMENT_LEFT); ?>" <?php echo e(old('advertisement_alignment') == \App\Advertisement::AD_ALIGNMENT_LEFT ? 'selected' : ''); ?>><?php echo e(__('advertisement.ad-alignment-left')); ?></option>
                                    <option value="<?php echo e(\App\Advertisement::AD_ALIGNMENT_CENTER); ?>" <?php echo e(old('advertisement_alignment') == \App\Advertisement::AD_ALIGNMENT_CENTER ? 'selected' : ''); ?>><?php echo e(__('advertisement.ad-alignment-center')); ?></option>
                                    <option value="<?php echo e(\App\Advertisement::AD_ALIGNMENT_RIGHT); ?>" <?php echo e(old('advertisement_alignment') == \App\Advertisement::AD_ALIGNMENT_RIGHT ? 'selected' : ''); ?>><?php echo e(__('advertisement.ad-alignment-right')); ?></option>
                                </select>
                                <?php $__errorArgs = ['advertisement_alignment'];
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
                                <button type="submit" class="btn btn-success py-2 px-4 text-white">
                                    <?php echo e(__('advertisement.create-ad')); ?>

                                </button>
                            </div>
                        </div>

                    </form>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="create-ad-page-help-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle"><?php echo e(__('advertisement.create-ad-modal-title')); ?></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <div class="row">
                        <div class="col-12">
                            <span class="text-gray-800"><?php echo e(__('advertisement.ad-place-listing-results')); ?></span>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <ul>
                                <li><?php echo e(__('advertisement.ad-position-before-breadcrumb')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-after-breadcrumb')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-before-content')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-after-content')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-sidebar-before-content')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-sidebar-after-content')); ?></li>
                            </ul>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-12">
                            <span class="text-gray-800"><?php echo e(__('advertisement.ad-place-listing-search')); ?></span>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <ul>
                                <li><?php echo e(__('advertisement.ad-position-before-breadcrumb')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-after-breadcrumb')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-before-content')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-after-content')); ?></li>
                            </ul>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-12">
                            <span class="text-gray-800"><?php echo e(__('advertisement.ad-place-business-listing')); ?></span>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <ul>
                                <li><?php echo e(__('advertisement.ad-position-before-breadcrumb')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-after-breadcrumb')); ?></li>

                                <li><?php echo e(__('advertisement.ad-position-before-gallery')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-before-description')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-before-location')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-before-features')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-before-reviews')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-before-comments')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-before-share')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-after-share')); ?></li>

                                <li><?php echo e(__('advertisement.ad-position-sidebar-before-content')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-sidebar-after-content')); ?></li>
                            </ul>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-12">
                            <span class="text-gray-800"><?php echo e(__('advertisement.ad-place-blog-posts')); ?></span>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <ul>
                                <li><?php echo e(__('advertisement.ad-position-before-breadcrumb')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-after-breadcrumb')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-before-content')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-after-content')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-sidebar-before-content')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-sidebar-after-content')); ?></li>
                            </ul>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-12">
                            <span class="text-gray-800"><?php echo e(__('advertisement.ad-place-blog-topic')); ?></span>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <ul>
                                <li><?php echo e(__('advertisement.ad-position-before-breadcrumb')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-after-breadcrumb')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-before-content')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-after-content')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-sidebar-before-content')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-sidebar-after-content')); ?></li>
                            </ul>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-12">
                            <span class="text-gray-800"><?php echo e(__('advertisement.ad-place-blog-tag')); ?></span>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <ul>
                                <li><?php echo e(__('advertisement.ad-position-before-breadcrumb')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-after-breadcrumb')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-before-content')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-after-content')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-sidebar-before-content')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-sidebar-after-content')); ?></li>
                            </ul>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-12">
                            <span class="text-gray-800"><?php echo e(__('advertisement.ad-place-single-post')); ?></span>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <ul>
                                <li><?php echo e(__('advertisement.ad-position-before-breadcrumb')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-after-breadcrumb')); ?></li>

                                <li><?php echo e(__('advertisement.ad-position-before-feature-image')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-before-title')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-before-post-content')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-after-post-content')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-before-comments')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-before-share')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-after-share')); ?></li>

                                <li><?php echo e(__('advertisement.ad-position-sidebar-before-content')); ?></li>
                                <li><?php echo e(__('advertisement.ad-position-sidebar-after-content')); ?></li>
                            </ul>
                        </div>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal"><?php echo e(__('advertisement.create-ad-modal-close')); ?></button>
                </div>
            </div>
        </div>
    </div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('scripts'); ?>
    <script src="<?php echo e(asset('backend/vendor/simplemde/dist/simplemde.min.js')); ?>"></script>

    <script>
        $(document).ready(function() {

            "use strict";

            /**
             * Start initial ad code textarea markdown
             */
            var simplemde = new SimpleMDE({
                element: document.getElementById("advertisement_code"),
                status: false,
                toolbar: false,
                spellChecker: false,
            });
            /**
             * End initial ad code textarea markdown
             */


            $('#create-ad-page-help').on('click', function(){

                $('#create-ad-page-help-modal').modal('show');
            });
        });
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.admin.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home4/uaenurse/public_html/menteybody/laravel_project/resources/views/backend/admin/ad/create.blade.php ENDPATH**/ ?>