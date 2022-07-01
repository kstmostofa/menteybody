<?php $markdown = app('Parsedown'); ?>
<?php ($markdown->setSafeMode(true)); ?>

<?php if(isset($reply) && $reply === true): ?>
  <div id="comment-<?php echo e($comment->getKey()); ?>" class="media">
<?php else: ?>
  <li id="comment-<?php echo e($comment->getKey()); ?>" class="media">
<?php endif; ?>
    <img class="mr-3" src="https://www.gravatar.com/avatar/<?php echo e(md5($comment->commenter->email ?? $comment->guest_email)); ?>.jpg?s=64" alt="<?php echo e($comment->commenter->name ?? $comment->guest_name); ?> Avatar">
    <div class="media-body">
        <h5 class="mt-0 mb-1"><?php echo e($comment->commenter->name ?? $comment->guest_name); ?> <small class="text-muted">- <?php echo e($comment->created_at->diffForHumans()); ?></small></h5>
        <div style="white-space: pre-wrap;"><?php echo $markdown->line($comment->comment); ?></div>

        <div>
            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('reply-to-comment', $comment)): ?>
                <button data-toggle="modal" data-target="#reply-modal-<?php echo e($comment->getKey()); ?>" class="btn btn-sm btn-link text-uppercase">Reply</button>
            <?php endif; ?>
            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('edit-comment', $comment)): ?>
                <button data-toggle="modal" data-target="#comment-modal-<?php echo e($comment->getKey()); ?>" class="btn btn-sm btn-link text-uppercase">Edit</button>
            <?php endif; ?>
            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('delete-comment', $comment)): ?>
                <a href="<?php echo e(route('comments.destroy', $comment->getKey())); ?>" onclick="event.preventDefault();document.getElementById('comment-delete-form-<?php echo e($comment->getKey()); ?>').submit();" class="btn btn-sm btn-link text-danger text-uppercase">Delete</a>
                <form id="comment-delete-form-<?php echo e($comment->getKey()); ?>" action="<?php echo e(route('comments.destroy', $comment->getKey())); ?>" method="POST" style="display: none;">
                    <?php echo method_field('DELETE'); ?>
                    <?php echo csrf_field(); ?>
                </form>
            <?php endif; ?>
        </div>

        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('edit-comment', $comment)): ?>
            <div class="modal fade" id="comment-modal-<?php echo e($comment->getKey()); ?>" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <form method="POST" action="<?php echo e(route('comments.update', $comment->getKey())); ?>">
                            <?php echo method_field('PUT'); ?>
                            <?php echo csrf_field(); ?>
                            <div class="modal-header">
                                <h5 class="modal-title">Edit Comment</h5>
                                <button type="button" class="close" data-dismiss="modal">
                                <span>&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label for="message">Update your message here:</label>
                                    <textarea required class="form-control" name="message" rows="3"><?php echo e($comment->comment); ?></textarea>
                                    <small class="form-text text-muted"><a target="_blank" href="https://help.github.com/articles/basic-writing-and-formatting-syntax">Markdown</a> cheatsheet.</small>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-sm btn-outline-secondary text-uppercase" data-dismiss="modal">Cancel</button>
                                <button type="submit" class="btn btn-sm btn-outline-success text-uppercase">Update</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        <?php endif; ?>

        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('reply-to-comment', $comment)): ?>
            <div class="modal fade" id="reply-modal-<?php echo e($comment->getKey()); ?>" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <form method="POST" action="<?php echo e(route('comments.reply', $comment->getKey())); ?>">
                            <?php echo csrf_field(); ?>
                            <div class="modal-header">
                                <h5 class="modal-title">Reply to Comment</h5>
                                <button type="button" class="close" data-dismiss="modal">
                                <span>&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label for="message">Enter your message here:</label>
                                    <textarea required class="form-control" name="message" rows="3"></textarea>
                                    <small class="form-text text-muted"><a target="_blank" href="https://help.github.com/articles/basic-writing-and-formatting-syntax">Markdown</a> cheatsheet.</small>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-sm btn-outline-secondary text-uppercase" data-dismiss="modal">Cancel</button>
                                <button type="submit" class="btn btn-sm btn-outline-success text-uppercase">Reply</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        <?php endif; ?>

        <br />

        
        <?php if($grouped_comments->has($comment->getKey())): ?>
            <?php $__currentLoopData = $grouped_comments[$comment->getKey()]; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $child): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <?php echo $__env->make('comments::_comment', [
                    'comment' => $child,
                    'reply' => true,
                    'grouped_comments' => $grouped_comments
                ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        <?php endif; ?>

    </div>
<?php if(isset($reply) && $reply === true): ?>
  </div>
<?php else: ?>
  </li>
<?php endif; ?><?php /**PATH /home4/uaenurse/public_html/menteybody/laravel_project/vendor/laravelista/comments/resources/views/_comment.blade.php ENDPATH**/ ?>