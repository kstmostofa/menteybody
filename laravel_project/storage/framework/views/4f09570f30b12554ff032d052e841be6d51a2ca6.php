<?php $__env->startSection('styles'); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <div class="row justify-content-between">
        <div class="col-9">
            <h1 class="h3 mb-2 text-gray-800"><?php echo e(__('importer_csv.import-csv-data-edit')); ?></h1>
            <p class="mb-4"><?php echo e(__('importer_csv.import-csv-data-edit-desc')); ?></p>
        </div>
        <div class="col-3 text-right">
            <a href="<?php echo e(route('admin.importer.csv.upload.data.index')); ?>" class="btn btn-info btn-icon-split">
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
                <div class="col-12">
                    <h4><?php echo e($import_csv_data->import_csv_data_filename); ?></h4>
                </div>
            </div>

            <div class="row mt-2">
                <div class="col-12">
                    <?php if($import_csv_data->import_csv_data_for_model == \App\ImportCsvData::IMPORT_CSV_FOR_MODEL_LISTING): ?>
                        <span class="bg-info pl-2 pr-2 pt-1 pb-1 text-white rounded"><?php echo e(__('importer_csv.csv-for-model-listing')); ?></span>
                    <?php endif; ?>
                </div>
            </div>

            <div class="row mt-4">
                <div class="col-12">
                    <?php echo e(__('importer_csv.parsed-percentage', ['parsed_count' => $import_csv_data->import_csv_data_parsed_rows, 'total_count' => $import_csv_data->import_csv_data_total_rows])); ?>

                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-12">
                    <?php $__currentLoopData = $import_csv_data_sample_header; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $import_csv_data_sample_header_key => $import_csv_data_sample_header_data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div class="row align-items-center border-left-info pt-1 pb-1 mb-2 <?php echo e($import_csv_data_sample_header_key%2 == 0 ? 'bg-light' : ''); ?>">
                            <div class="col-12 col-md-2">
                                <?php echo e(__('importer_csv.column') . ' ' . strval($import_csv_data_sample_header_key+1)); ?>

                            </div>
                            <div class="col-12 col-md-7">
                                <?php echo e($import_csv_data_sample_header_data); ?>

                            </div>
                            <div class="col-12 col-md-3">
                                <select class="custom-select select_csv_data_columns" name="csv_data_columns[]">
                                    <?php $__currentLoopData = \App\ImportItemData::DATA_COLUMNS; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data_column_key => $data_column_value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <option <?php echo e($import_csv_data_sample_header_key == $data_column_key ? 'selected' : ''); ?> value="<?php echo e($data_column_key); ?>">
                                            <?php echo e(__('theme_directory_hub.importer.basic') . ': '); ?>

                                            <?php if($data_column_value == 'import_item_data_item_title'): ?>
                                                <?php echo e(__('importer_csv.column-item-title')); ?>

                                            <?php elseif($data_column_value == 'import_item_data_item_slug'): ?>
                                                <?php echo e(__('importer_csv.column-item-slug')); ?>

                                            <?php elseif($data_column_value == 'import_item_data_item_address'): ?>
                                                <?php echo e(__('importer_csv.column-item-address')); ?>

                                            <?php elseif($data_column_value == 'import_item_data_city'): ?>
                                                <?php echo e(__('importer_csv.column-item-city')); ?>

                                            <?php elseif($data_column_value == 'import_item_data_state'): ?>
                                                <?php echo e(__('importer_csv.column-item-state')); ?>

                                            <?php elseif($data_column_value == 'import_item_data_country'): ?>
                                                <?php echo e(__('importer_csv.column-item-country')); ?>

                                            <?php elseif($data_column_value == 'import_item_data_item_lat'): ?>
                                                <?php echo e(__('importer_csv.column-item-lat')); ?>

                                            <?php elseif($data_column_value == 'import_item_data_item_lng'): ?>
                                                <?php echo e(__('importer_csv.column-item-lng')); ?>

                                            <?php elseif($data_column_value == 'import_item_data_item_postal_code'): ?>
                                                <?php echo e(__('importer_csv.column-item-postal-code')); ?>

                                            <?php elseif($data_column_value == 'import_item_data_item_description'): ?>
                                                <?php echo e(__('importer_csv.column-item-description')); ?>

                                            <?php elseif($data_column_value == 'import_item_data_item_phone'): ?>
                                                <?php echo e(__('importer_csv.column-item-phone')); ?>

                                            <?php elseif($data_column_value == 'import_item_data_item_website'): ?>
                                                <?php echo e(__('importer_csv.column-item-website')); ?>

                                            <?php elseif($data_column_value == 'import_item_data_item_social_facebook'): ?>
                                                <?php echo e(__('importer_csv.column-item-facebook')); ?>

                                            <?php elseif($data_column_value == 'import_item_data_item_social_twitter'): ?>
                                                <?php echo e(__('importer_csv.column-item-twitter')); ?>

                                            <?php elseif($data_column_value == 'import_item_data_item_social_linkedin'): ?>
                                                <?php echo e(__('importer_csv.column-item-linkedin')); ?>

                                            <?php elseif($data_column_value == 'import_item_data_item_youtube_id'): ?>
                                                <?php echo e(__('importer_csv.column-item-youtube-id')); ?>

                                            <?php elseif($data_column_value == 'import_item_data_item_image'): ?>
                                                <?php echo e(__('sitemap_import.column-item-feature-image')); ?>

                                            <?php elseif($data_column_value == 'import_item_data_item_image_galleries'): ?>
                                                <?php echo e(__('sitemap_import.column-item-gallery-images')); ?>

                                            <?php endif; ?>
                                        </option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                                    <?php $__currentLoopData = $available_custom_fields_ids; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $available_custom_fields_ids_key => $available_custom_fields_id): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                                        <?php
                                        $custom_field_exist = \App\CustomField::find($available_custom_fields_id);
                                        ?>

                                        <?php if($custom_field_exist): ?>
                                            <option value="<?php echo e('custom_field_' . $custom_field_exist->id); ?>">
                                                <?php echo e(__('theme_directory_hub.importer.custom-field') . ': ' . $custom_field_exist->custom_field_name); ?>

                                            </option>
                                        <?php endif; ?>

                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                                    <option value="<?php echo e(\App\ImportItemData::DATA_COLUMNS_DO_NOT_PARSE); ?>"><?php echo e(__('importer_csv.import-listing-do-not-parse')); ?></option>
                                </select>
                            </div>
                        </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            </div>
            <hr>

            <div class="row mt-3">
                <div class="col-12">
                    <form class="form-inline">
                        <div class="form-group mr-2">
                            <label for="import_item_data_markup"><?php echo e(__('importer_csv.import-listing-markup')); ?></label>
                            <input type="text" name="import_item_data_markup" id="import_item_data_markup" class="form-control mx-sm-3" aria-describedby="import_item_data_markup" value="<?php echo e($import_csv_data->import_csv_data_filename); ?>">
                            <small id="import_item_data_markup" class="text-muted">
                                <?php echo e(__('importer_csv.import-listing-markup-help')); ?>

                            </small>
                        </div>
                    </form>
                </div>
            </div>

            <div class="row mt-3">
                <div class="col-12">
                    <button class="btn btn-primary text-white rounded" id="start_parse_button">
                        <?php echo e(__('importer_csv.start-parse')); ?>

                    </button>
                </div>
            </div>

            <div class="row mt-3">
                <div class="col-12">
                    <div class="progress">
                        <div id="div_parse_progress_bar" class="progress-bar progress-bar-striped progress-bar-animated bg-info" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%;">
                        </div>
                    </div>
                </div>
            </div>

            <div class="row mt-3">
                <div class="col-12 text-center">

                    <div class="alert alert-info" role="alert">
                        <span id="span_parse_progress_box"></span>
                        <br>
                        <span class="text-danger" id="span_parse_error_box"></span>
                    </div>

                </div>
            </div>

        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('scripts'); ?>
    <script>
        $(document).ready(function() {

            "use strict";

            $('#start_parse_button').on('click', function(){

                /**
                 * Start ajax csv parse process
                 */
                $("#start_parse_button").attr("disabled", true);

                $('#span_parse_progress_box').text('<?php echo e(__('importer_csv.csv-parse-in-progress')); ?>');

                var markup = $("#import_item_data_markup").val();

                var csv_data_columns = [];

                $(".select_csv_data_columns").each(function( index ) {
                    csv_data_columns.push($(this).val());
                });

                var ajax_url = '<?php echo e(route('admin.importer.csv.upload.data.parse', ['import_csv_data' => $import_csv_data->id])); ?>';

                var timeout_progress_continue = true;

                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });
                jQuery.ajax({
                    url: ajax_url,
                    method: 'post',
                    data: {
                        'csv_data_columns' : csv_data_columns,
                        'import_item_data_markup' : markup,
                    },
                    success: function(result){

                        $('#span_parse_progress_box').text(result.success);
                    },
                    error: function(xhr){
                        console.log("an error occured: " + xhr.status + " " + xhr.statusText);

                        $('#span_parse_error_box').text("<?php echo e(__('importer_csv.import-csv-data-parse-error')); ?>");

                        timeout_progress_continue = false;
                    }
                });
                /**
                 * End ajax csv parse process
                 */

                /**
                 * Start ajax csv parse progress process
                 */
                var ajax_progress_url = '<?php echo e(route('admin.importer.csv.upload.data.parse.progress', ['import_csv_data' => $import_csv_data->id])); ?>';

                (function worker() {
                    $.ajax({
                        url: ajax_progress_url,
                        method: 'post',
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        },
                        success: function(result) {
                            console.log(result);

                            $('#div_parse_progress_bar').attr("aria-valuenow", result.progress_percent);
                            $('#div_parse_progress_bar').attr("style", "width: " + result.progress_percent + "%;");
                            $('#div_parse_progress_bar').text(result.progress);

                            if(result.end === 1)
                            {
                                timeout_progress_continue = false;
                            }
                        },
                        complete: function() {
                            if(timeout_progress_continue)
                            {
                                // Schedule the next request when the current one's complete
                                var timeout_progress = setTimeout(worker, 200);
                            }
                        }
                    });
                })();
                /**
                 * End ajax csv parse progress process
                 */
            });



        });
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.admin.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home4/uaenurse/public_html/menteybody/laravel_project/resources/views/backend/admin/importer/csv/data/edit.blade.php ENDPATH**/ ?>