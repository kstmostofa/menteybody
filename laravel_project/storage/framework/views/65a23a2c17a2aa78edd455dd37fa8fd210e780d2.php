<div class="card">
    <div class="card-body">
        <?php if($errors->has('commentable_type')): ?>
            <div class="alert alert-danger" role="alert">
                <?php echo e($errors->first('commentable_type')); ?>

            </div>
        <?php endif; ?>
        <?php if($errors->has('commentable_id')): ?>
            <div class="alert alert-danger" role="alert">
                <?php echo e($errors->first('commentable_id')); ?>

            </div>
        <?php endif; ?>
        <form method="POST" action="<?php echo e(route('comments.store')); ?>">
            <?php echo csrf_field(); ?>
            <?php echo view('honeypot::honeypotFormFields'); ?>
            <input type="hidden" name="commentable_type" value="\<?php echo e(get_class($model)); ?>" />
            <input type="hidden" name="commentable_id" value="<?php echo e($model->getKey()); ?>" />

            
            <?php if(isset($guest_commenting) and $guest_commenting == true): ?>
                <div class="form-group">
                    <label for="message">Enter your name here:</label>
                    <input type="text" class="form-control <?php if($errors->has('guest_name')): ?> is-invalid <?php endif; ?>" name="guest_name" />
                    <?php $__errorArgs = ['guest_name'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                        <div class="invalid-feedback">
                            <?php echo e($message); ?>

                        </div>
                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                </div>
                <div class="form-group">
                    <label for="message">Enter your email here:</label>
                    <input type="email" class="form-control <?php if($errors->has('guest_email')): ?> is-invalid <?php endif; ?>" name="guest_email" />
                    <?php $__errorArgs = ['guest_email'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                        <div class="invalid-feedback">
                            <?php echo e($message); ?>

                        </div>
                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                </div>
            <?php endif; ?>

            <div class="form-group">
                <label for="message">Enter your message here:</label>
                <textarea class="form-control <?php if($errors->has('message')): ?> is-invalid <?php endif; ?>" name="message" rows="3"></textarea>
                <div class="invalid-feedback">
                    Your message is required.
                </div>
                <small class="form-text text-muted"><a target="_blank" href="https://help.github.com/articles/basic-writing-and-formatting-syntax">Markdown</a> cheatsheet.</small>
            </div>
            <button type="submit" class="btn btn-sm btn-outline-success text-uppercase">Submit</button>
        </form>
    </div>
</div>
<br /><?php /**PATH /home4/uaenurse/public_html/menteybody/laravel_project/vendor/laravelista/comments/resources/views/_form.blade.php ENDPATH**/ ?>