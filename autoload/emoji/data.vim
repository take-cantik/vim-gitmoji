" Copyright (c) 2015 Junegunn Choi
"
" MIT License
"
" Permission is hereby granted, free of charge, to any person obtaining
" a copy of this software and associated documentation files (the
" "Software"), to deal in the Software without restriction, including
" without limitation the rights to use, copy, modify, merge, publish,
" distribute, sublicense, and/or sell copies of the Software, and to
" permit persons to whom the Software is furnished to do so, subject to
" the following conditions:
"
" The above copyright notice and this permission notice shall be
" included in all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
" EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
" MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
" NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
" LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
" OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
" WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

let s:emoji_code = {
  \ 'sparkles': 0x2728,
  \ 'zap': 0x26a1,
  \ 'white_check_mark': 0x2705,
  \ 'bug': 0x1f41b,
  \ 'adhesive_bandage': 0x1FA79,
  \ 'recycle': 0x267b,
  \ 'fire': 0x1f525,
  \ 'wrench': 0x1f527,
  \ 'truck': 0x1f69a,
  \ 'memo': 0x1f4dd,
  \ 'arrow_up': 0x2b06,
  \ 'arrow_down': 0x2b07,
  \ 'heavy_plus_sign': 0x2795,
  \ 'heavy_minus_sign': 0x2796,
  \ 'see_no_evil': 0x1f648,
  \ 'bento': 0x1f371,
  \ 'construction': 0x1f6a7,
  \ 'art': 0x1f3a8,
  \ 'tada': 0x1f389,
  \ 'seedling': 0x1f331,
\ }
    " \ 'alembic': 0x2697,
    " \ 'alien': 0x1f47d,
    " \ 'ambulance': 0x1f691,
    " \ 'beers': 0x1f37b,
    " \ 'bookmark': 0x1f516,
    " \ 'boom': 0x1f4a5,
    " \ 'building_construction': 0x1f3d7,
    " \ 'bulb': 0x1f4a1,
    " \ 'busts_in_silhouette': 0x1f465,
    " \ 'camera_flash': 0x1F4F8,
    " \ 'card_file_box': 0x1f5c3,
    " \ 'chart_with_upwards_trend': 0x1f4c8,
    " \ 'children_crossing': 0x1f6b8,
    " \ 'clown_face': 0x1f921,
    " \ 'coffin': 0x26B0FE0F,
    " \ 'construction_worker': 0x1f477,
    " \ 'dizzy': 0x1f4ab,
    " \ 'egg': 0x1f373,
    " \ 'globe_with_meridians': 0x1f310,
    " \ 'goal_net': 0x1f945,
    " \ 'green_heart': 0x1f49a,
    " \ 'iphone': 0x1f4f1,
    " \ 'label': 0x1f3f7,
    " \ 'lipstick': 0x1f484,
    " \ 'lock': 0x1f512,
    " \ 'loud_sound': 0x1f50a,
    " \ 'mag': 0x1f50d,
    " \ 'mute': 0x1f507,
    " \ 'package': 0x1f4e6,
    " \ 'page_facing_up': 0x1f4c4,
    " \ 'pencil2': 0x270f,
    " \ 'poop': 0x1f4a9,
    " \ 'pushpin': 0x1f4cd,
    " \ 'rewind': 0x23ea,
    " \ 'rocket': 0x1f680,
    " \ 'rotating_light': 0x1f6a8,
    " \ 'speech_balloon': 0x1f4ac,
    " \ 'triangular_flag_on_post': 0x1f6a9,
    " \ 'twisted_rightwards_arrows': 0x1f500,
    " \ 'wastebasket': 0x1f5d1,
    " \ 'wheelchair': 0x267f,
    " \ 'monocle_face': 0x1F9D0,
    " \ 'test_tube': 0x1F9EA,
    " \ 'necktie': 0x128084,
    " \ 'stethoscope': 0x1FA7A,
    " \ 'bricks': 0x1f9f1,
    " \ 'money_with_wings': 0x1F4B8,
    " \ 'thread': 0x1F9F5,
    " \ 'safety_vest': 0x1F9BA,

let s:emoji_gitmoji = {
  \ 'sparkles':            {'priority':  1, 'description': '  [Add]    新機能追加: Introducing new features.'},
  \ 'zap':                 {'priority':  2, 'description': '  [Update] 機能更新: Improving performance.'},
  \ 'white_check_mark':    {'priority':  3, 'description': '  [Update] テストを更新: Updating tests.'},
  \ 'bug':                 {'priority':  4, 'description': '  [Fix]    バグ修正: Fixing a bug.'},
  \ 'adhesive_bandage':    {'priority':  5, 'description': '  [Fix]    ちょっとした修正: Simple fix for a non-critical issue.'},
  \ 'recycle':             {'priority':  6, 'description': '  [Refact] リファクタリング: Refactoring code.'},
  \ 'fire':                {'priority':  7, 'description': '  [Delete] コードの削除: Removing code or files.'},
  \ 'wrench':              {'priority':  8, 'description': '  [Update] 設定ファイルの変更: Changing configuration files.'},
  \ 'truck':               {'priority':  9, 'description': '  [Update] ファイル名変更: Moving or renaming files.'},
  \ 'memo':                {'priority': 10, 'description': '  [Change] 文書の更新: Add or update documentation.'},
  \ 'arrow_up':            {'priority': 11, 'description': '  [Update] 依存関係をアップグレード: Upgrading dependencies.'},
  \ 'arrow_down':          {'priority': 12, 'description': '  [Update] 依存関係をダウングレード: Downgrading dependencies.'},
  \ 'heavy_plus_sign':     {'priority': 13, 'description': '  [Add] 依存関係の追加: Adding a dependency.'},
  \ 'heavy_minus_sign':    {'priority': 14, 'description': '  [Delete] 依存関係の削除: Removing a dependency.'},
  \ 'see_no_evil':         {'priority': 15, 'description': '  [Change] .gitignoreの更新: Adding or updating a .gitignore file.'},
  \ 'bento':               {'priority': 16, 'description': '  [Add,Update] アセットの更新: Adding or updating assets.'},
  \ 'construction':        {'priority': 17, 'description': '  [Wip] 進行中: Work in progress.'},
  \ 'art':                 {'priority': 18, 'description': '  [Update] コードフォーマット: Improving structure / format of the code.'},
  \ 'tada':                {'priority': 19, 'description': '  [Init]   初コミット: Initial commit.'},
  \ 'seedling':            {'priority': 20, 'description': '  [Add,Update] 初期ファイルの更新: Adding or updating seed files'},
\ }
    " \ 'alembic':             {'priority': 13, 'description': '  [Test]   新しいこと試す: Experimenting new things.'},
    " \ 'alien': ['  [Update] APIの変更に伴う更新: Updating code due to external API changes.'],
    " \ 'ambulance': ['  [Fix] 緊急性の高い修正: Critical hotfix.'],
    " \ 'beers': [' 酒！: Writing code drunkenly.'],
    " \ 'bookmark': ['  [Deploy] リリース: Releasing / Version tags.'],
    " \ 'boom': ['  [Update] 破壊的変更: Introducing breaking changes.'],
    " \ 'building_construction': [' [Update] アーキテクチャ変更: Making architectural changes.'],
    " \ 'bulb': ['  [Add,Update] コメントアウト: Documenting source code.'],
    " \ 'busts_in_silhouette': ['  [Add] 開発者追加: Add contributor(s).'],
    " \ 'camera_flash': ['  [Add,Update] スナップショットを更新: Adding or updating snapshots.'],
    " \ 'card_file_box': ['  [Update] DB関連の更新: Performing database related changes.'],
    " \ 'chart_with_upwards_trend': ['  [Add] アナリティクスの追加: Adding analytics or tracking code.'],
    " \ 'children_crossing': ['  [Update] UXの向上: Improving user experience / usability.'],
    " \ 'clown_face': ['  [Mock] 何かをモック化: Mocking things.'],
    " \ 'coffin': ['  [Delete] デッドコードの削除: Remove dead code.'],
    " \ 'construction_worker': {'priority': 14, 'description': '  [Add]    CIの追加: Adding CI build system.'},
    " \ 'dizzy': ['  [Add,Update] アニメーションの更新: Adding or updating animations and transitions'],
    " \ 'egg': ['  [Add,Update] イースターエッグの追加: Adding an easter egg.'],
    " \ 'globe_with_meridians': ['  [Update] グローバル化: Internationalization and localization.'],
    " \ 'goal_net': ['  [Error] エラーを検知: Catching errors'],
    " \ 'green_heart':         {'priority': 15, 'description': '  [Fix]    CIの修正: Fixing CI Build.'},
    " \ 'iphone': ['  [Update] レスポンシブに対応: Working on responsive design.'],
    " \ 'label':               {'priority':  3, 'description': '  [Change] 型の更新: Adding or updating types (Flow, TypeScript)'},
    " \ 'lipstick': ['  [Update] UIやスタイルの更新 Updating the UI and style files.'],
    " \ 'lock': ['  [Fix] セキュリティの修正: Fixing security issues.'],
    " \ 'loud_sound': ['  [Add] ログを追加: Adding logs.'],
    " \ 'mag': ['  [Update] UEOの向上: Improving SEO.'],
    " \ 'mute': ['  [Delete] ログの削除: Removing logs.'],
    " \ 'package': ['  [Update] コンパイルファイルの更新: Updating compiled files or packages.'],
    " \ 'page_facing_up': ['  [Add,Update] ライセンスの更新 Adding or updating license.'],
    " \ 'pencil2':             {'priority':  8, 'description': '  [Fix]    タイポ修正: Fixing typos.'},
    " \ 'poop': ['  [Add] 悪いコード書く: Writing bad code that needs to be improved.'],
    " \ 'pushpin': ['  [Update] 依存関係のバージョン固定: Pinning dependencies to specific versions.'],
    " \ 'rewind':              {'priority': 12, 'description': '  [Fix]    元に戻す: Reverting changes.'},
    " \ 'rocket': ['  [Deploy] デプロイ: Deploying stuff.'],
    " \ 'rotating_light': ['  [Update] Lintの警告を解決: Removing linter warnings.'],
    " \ 'speech_balloon': ['  [Update] テキストやリテラルの更新: Updating text and literals.'],
    " \ 'triangular_flag_on_post': ['  [Add,Update] 条件分岐の更新: Adding, updating, or removing feature flags'],
    " \ 'twisted_rightwards_arrows': ['  [Update] マージ: Merging branches.'],
    " \ 'wastebasket': ['  [Add] 非推奨なコード: Deprecating code that needs to be cleaned up.'],
    " \ 'wheelchair': ['  [Update] アクセシビリティの改善: Improving accessibility.'],
    " \ 'monocle_face': ['  [Research] データの調査: Data exploration/inspection.'],
    " \ 'test_tube': ['  [Add] 落ちるテストの作成: Add a failing test.'],
    " \ 'necktie': ['  [Add,Update] ビジネスロジックの更新: Add or update business logic.'],
    " \ 'stethoscope': ['  [Add,Update] ヘルスチェックの更新: Add or update healthcheck.'],
    " \ 'bricks': ['  [Update] インフラに関する変更: Infrastructure related changes.'],
    " \ 'money_with_wings': ['  [Add] お金に関するインフラの追加: Add sponsorships or money related infrastructure.'],
    " \ 'thread': ['  [Add,Update] 並列処理に関する変更: Add or update code related to multithreading or concurrency.'],
    " \ 'safety_vest': ['  [Add,Update] バリデーションの更新: Add or update code related to validation.']

function! emoji#data#dict()
  return s:emoji_code
endfunction

function emoji#data#gitmoji()
  return s:emoji_gitmoji
endfunction
