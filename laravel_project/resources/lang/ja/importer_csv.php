<?php
return array (
  'seo' =>
  array (
    'upload' => 'ダッシュボード-CSVファイルのアップロード- :site_name',
    'csv-data-index' => 'ダッシュボード-CSVアップロード履歴- :site_name',
    'csv-data-edit' => 'ダッシュボード-CSVデータの解析- :site_name',
    'item-index' => 'ダッシュボード-リストのインポート- :site_name',
    'item-edit' => 'ダッシュボード-リストのインポートの編集- :site_name',
  ),
  'alert' =>
  array (
    'upload-success' => 'ファイルが正常にアップロードされました',
    'upload-empty-file' => 'アップロードされたファイルの内容は空です',
    'fully-parsed' => 'CSVファイルは完全に解析されたため、再度解析することはできません',
    'parsed-success' => 'CSVファイルデータが一時的なリストデータベースに正常に解析されました。サイドバーメニュー>ツール>インポーター>リストに移動して、最終的なインポートを開始してください',
    'csv-file-deleted' => 'CSVファイルがサーバーファイルストレージから削除されました',
    'import-item-updated' => 'インポートリスト情報が正常に更新されました',
    'import-item-deleted' => 'インポートリスト情報が正常に削除されました',
    'import-process-success' => 'ウェブサイトのリストに正常にインポートされたリスト情報',
    'import-process-error' => 'インポートの処理中にエラーが発生しました。詳細についてはエラーログを確認してください',
    'import-all-process-completed' => 'すべてのリストのインポートプロセスが完了しました',
    'import-item-cannot-edit-success-processed' => '正常にインポートされたインポートリスト情報は編集できません',
    'import-process-completed' => 'インポートプロセスが完了しました',
    'import-process-no-listing-selected' => 'インポートプロセスを開始する前にリストを選択してください',
    'import-process-no-categories-selected' => 'インポートプロセスを開始する前に、1つ以上のカテゴリを選択してください',
    'import-listing-process-in-progress' => '進行中です。完了するまでお待ちください',
    'delete-import-listing-process-no-listing-selected' => '削除プロセスを開始する前に、リストを選択してください',
  ),
  'sidebar' =>
  array (
    'importer' => '輸入業者',
    'upload-csv' => 'CSVをアップロード',
    'upload-history' => 'アップロード履歴',
    'listings' => 'リスト',
  ),
  'show-upload' => 'CSVファイルをアップロード',
  'show-upload-desc' => 'このページでは、CSVファイルをアップロードし、後の手順でインポートするために生のリストデータに解析できます。',
  'csv-for-model' => 'のCSVファイル',
  'csv-for-model-listing' => 'リスト',
  'choose-csv-file' => 'ファイルを選ぶ',
  'choose-csv-file-help' => 'サポートファイルタイプ：csv、txt、最大サイズ：10mb',
  'upload' => 'アップロード',
  'csv-skip-first-row' => '最初の行をスキップ',
  'filename' => 'ファイル名',
  'progress' => '解析された進行状況',
  'uploaded-at' => 'でアップロード',
  'model-for' => 'モデル',
  'import-csv-data-index' => 'CSVファイルのアップロード履歴',
  'import-csv-data-index-desc' => 'このページには、アップロードされたすべてのCSVファイルとそれらの解析された進行状況が表示されます。',
  'parse' => '解析',
  'import-csv-data-edit' => 'CSVファイルデータの解析',
  'import-csv-data-edit-desc' => 'このページでは、アップロードしたCSVファイルのデータを解析できます。',
  'start-parse' => '解析を開始します',
  'import-csv-data-parse-error' => 'エラーが発生しました。残りの行の解析を続行するには、ページをリロードしてください。',
  'parsed-percentage' => '解析された :total_countレコードの:parsed_count',
  'column' => 'カラム',
  'column-item-title' => 'リスティングタイトル',
  'column-item-slug' => 'スラッグのリスト',
  'column-item-address' => 'リスティングアドレス',
  'column-item-city' => '上場都市',
  'column-item-state' => 'リスティングの状態',
  'column-item-country' => '上場国',
  'column-item-lat' => 'リスト緯度',
  'column-item-lng' => 'リストlng',
  'column-item-postal-code' => '郵便番号の一覧表示',
  'column-item-description' => 'リスティングの説明',
  'column-item-phone' => 'リスティング電話',
  'column-item-website' => 'リスティングウェブサイト',
  'column-item-facebook' => 'フェイスブックのリスト',
  'column-item-twitter' => 'ツイッターのリスト',
  'column-item-linkedin' => 'LinkedInのリスト',
  'column-item-youtube-id' => 'YouTubeIDを一覧表示',
  'delete-file' => 'ファイルを削除する',
  'csv-file' => 'CSVファイル',
  'import-errors' =>
  array (
    'user-not-exist' => 'ユーザーが存在しません',
    'item-status-not-exist' => 'リストは、送信済み、公開済み、または一時停止のステータスである必要があります',
    'item-featured-not-exist' => '注目のリストは「はい」または「いいえ」である必要があります',
    'country-not-exist' => '国が存在しません。場所>国>国の追加で国を追加してください',
    'state-not-exist' => '状態が存在しません。[場所]> [状態]> [状態の追加]で状態を追加してください',
    'city-not-exist' => '都市が存在しません。場所>都市>都市の追加で都市を追加してください',
    'item-title-required' => 'リストのタイトルが必要です',
    'item-description-required' => 'リスティングの説明が必要です',
    'item-postal-code-required' => '郵便番号の一覧表示が必要です',
    'categories-required' => 'リストは1つ以上のカテゴリに割り当てる必要があります',
    'import-item-cannot-process-success-processed' => '正常にインポートされたインポートリスト情報は処理できません',
  ),
  'import-listing-index' => 'リストをインポートする',
  'import-listing-index-desc' => 'このページには、CSVファイルから解析されたすべてのリストデータが表示されます。これらは生のリストデータであり、Webサイトのリストにインポートする準備ができています。',
  'import-listing-status-not-processed' => '処理されていません',
  'import-listing-status-success' => '成功を収めて処理',
  'import-listing-status-error' => 'エラーで処理',
  'import-listing-order-newest-processed' => '最新の処理済み',
  'import-listing-order-oldest-processed' => '最も古い処理済み',
  'import-listing-order-newest-parsed' => '最新の解析済み',
  'import-listing-order-oldest-parsed' => '最古の解析済み',
  'import-listing-order-title-a-z' => 'タイトル（AZ）',
  'import-listing-order-title-z-a' => 'タイトル（ZA）',
  'import-listing-order-city-a-z' => '市（AZ）',
  'import-listing-order-city-z-a' => '市（ZA）',
  'import-listing-order-state-a-z' => '州（AZ）',
  'import-listing-order-state-z-a' => '州（ZA）',
  'import-listing-order-country-a-z' => '国（AZ）',
  'import-listing-order-country-z-a' => '国（ZA）',
  'select' => '選択する',
  'import-listing-title' => '題名',
  'import-listing-city' => '市',
  'import-listing-state' => '状態',
  'import-listing-country' => '国',
  'import-listing-status' => '状態',
  'import-listing-detail' => '詳細',
  'import-listing-slug' => 'ナメクジ',
  'import-listing-address' => '住所',
  'import-listing-lat' => '緯度',
  'import-listing-lng' => '経度',
  'import-listing-postal-code' => '郵便番号',
  'import-listing-description' => '説明',
  'import-listing-phone' => '電話',
  'import-listing-website' => 'ウェブサイト',
  'import-listing-facebook' => 'フェイスブック',
  'import-listing-twitter' => 'ツイッター',
  'import-listing-linkedin' => 'LinkedIn',
  'import-listing-youtube-id' => 'YouTubeID',
  'import-listing-do-not-parse' => '解析しないでください',
  'import-listing-source' => 'ソース',
  'import-listing-source-csv' => 'CSVファイルのアップロード',
  'import-listing-error-log' => 'エラーログ',
  'import-listing-edit' => 'リストのインポートを編集',
  'import-listing-edit-desc' => 'このページでは、インポートリスト情報を編集したり、個々のインポートリスト情報をWebサイトリストに処理したりできます。',
  'import-listing-information' => 'リスティング情報のインポート',
  'choose-import-listing-preference' => 'リストにインポート',
  'choose-import-listing-categories' => '1つ以上のカテゴリを選択してください',
  'choose-import-listing-owner' => 'リスティングオーナー',
  'choose-import-listing-status' => 'リスティングステータス',
  'choose-import-listing-featured' => '注目のリスト',
  'import-listing-button' => '今すぐインポート',
  'choose-import-listing-preference-selected' => '選択したものをリストにインポート',
  'import-listing-selected-button' => '選択したインポート',
  'import-listing-selected-modal-title' => '選択したリストをインポートする',
  'import-listing-selected-total' => 'インポートする合計',
  'import-listing-selected-success' => '成功',
  'import-listing-selected-error' => 'エラー',
  'import-listing-per-page-10' => '10行',
  'import-listing-per-page-25' => '25行',
  'import-listing-per-page-50' => '50行',
  'import-listing-per-page-100' => '100行',
  'import-listing-per-page-250' => '250行',
  'import-listing-per-page-500' => '500行',
  'import-listing-per-page-1000' => '1000行',
  'import-listing-select-all' => 'すべて選択',
  'import-listing-un-select-all' => 'すべて選択解除',
  'csv-parse-in-progress' => 'CSVファイルの解析が進行中です。完了するまでお待ちください',
  'error-notify-modal-close-title' => 'エラー',
  'error-notify-modal-close' => '閉じる',
  'csv-file-upload-listing-instruction' => '命令',
  'csv-file-upload-listing-instruction-columns' => 'リストの列：タイトル、スラッグ（オプション）、住所（オプション）、都市、州、国、緯度（オプション）、経度（オプション）、郵便番号、説明、電話（オプション）、ウェブサイト（オプション）、フェイスブック（オプション）、twitter（オプション）、linkedin（オプション）、youtube id（オプション）。',
  'csv-file-upload-listing-instruction-tip-1' => 'CSVファイルの解析プロセスでは推測に最善を尽くしますが、都市、州、国の名前がWebサイトの場所データ（サイドバー>場所>国、州、都市）と一致していることを確認してください。',
  'csv-file-upload-listing-instruction-tip-2' => 'ウェブサイトが共有ホスティングでホストしている場合は、最大実行時間が超過エラーを回避するために、毎回15,000行未満のCSVファイルをアップロードしてみてください。',
  'csv-file-upload-listing-instruction-tip-3' => '便宜上、CSVファイルをカテゴリ別にグループ化してください。たとえば、restaurant.csvという名前の1つのCSVファイル内のレストランと、hotel.csvという名前の別のCSVファイル内のホテル。',
  'import-listing-delete-selected' => '選択を削除します',
  'import-listing-delete-progress' => '削除しています...お待ちください',
  'import-listing-delete-progress-deleted' => '削除',
  'import-listing-delete-complete' => '完了',
  'import-listing-delete-error' => 'エラーが発生しました。残りのレコードの削除を続行するには、ページをリロードしてください。',
  'import-listing-import-button-progress' => 'インポートしています...お待ちください',
  'import-listing-import-button-complete' => '完了',
  'import-listing-import-button-error' => 'エラーが発生しました。残りのレコードのインポートを続行するには、ページをリロードしてください。',
  'import-listing-markup' => 'マークアップ',
  'import-listing-markup-help' => '他のファイルバッチと区別するためにいくつかの単語を与えます',
  'import-listing-markup-all' => 'すべてのマークアップ',
);