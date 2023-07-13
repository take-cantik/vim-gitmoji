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
    \ 'label': 0x1f3f7,
    \ 'fire': 0x1f525,
    \ 'bug': 0x1f41b,
    \ 'memo': 0x1f4dd,
    \ 'pencil2': 0x270f,
    \ 'truck': 0x1f69a,
    \ 'see_no_evil': 0x1f648,
    \ 'tada': 0x1f389,
    \ 'rewind': 0x23ea,
    \ 'alembic': 0x2697,
    \ 'alien': 0x1f47d,
    \ 'ambulance': 0x1f691,
    \ 'arrow_down': 0x2b07,
    \ 'arrow_up': 0x2b06,
    \ 'art': 0x1f3a8,
    \ 'beers': 0x1f37b,
    \ 'bento': 0x1f371,
    \ 'bookmark': 0x1f516,
    \ 'boom': 0x1f4a5,
    \ 'building_construction': 0x1f3d7,
    \ 'bulb': 0x1f4a1,
    \ 'busts_in_silhouette': 0x1f465,
    \ 'camera_flash': 0x1F4F8,
    \ 'card_file_box': 0x1f5c3,
    \ 'chart_with_upwards_trend': 0x1f4c8,
    \ 'children_crossing': 0x1f6b8,
    \ 'clown_face': 0x1f921,
    \ 'construction': 0x1f6a7,
    \ 'construction_worker': 0x1f477,
    \ 'dizzy': 0x1f4ab,
    \ 'egg': 0x1f373,
    \ 'globe_with_meridians': 0x1f310,
    \ 'goal_net': 0x1f945,
    \ 'green_heart': 0x1f49a,
    \ 'heavy_minus_sign': 0x2796,
    \ 'heavy_plus_sign': 0x2795,
    \ 'iphone': 0x1f4f1,
    \ 'lipstick': 0x1f484,
    \ 'lock': 0x1f512,
    \ 'loud_sound': 0x1f50a,
    \ 'mag': 0x1f50d,
    \ 'mute': 0x1f507,
    \ 'package': 0x1f4e6,
    \ 'page_facing_up': 0x1f4c4,
    \ 'poop': 0x1f4a9,
    \ 'pushpin': 0x1f4cd,
    \ 'recycle': 0x267b,
    \ 'rocket': 0x1f680,
    \ 'rotating_light': 0x1f6a8,
    \ 'seedling': 0x1f331,
    \ 'speech_balloon': 0x1f4ac,
    \ 'triangular_flag_on_post': 0x1f6a9,
    \ 'twisted_rightwards_arrows': 0x1f500,
    \ 'wastebasket': 0x1f5d1,
    \ 'wheelchair': 0x267f,
    \ 'white_check_mark': 0x2705,
    \ 'wrench': 0x1f527,
\ }

let s:emoji_gitmoji = {
    \ 'sparkles': ['  [Add] 新機能追加: Introducing new features.'],
    \ 'zap': ['  [Update] 機能更新: Improving performance.'],
    \ 'label': ['  [Add,Update] 型の更新: Adding or updating types (Flow, TypeScript)'],
    \ 'fire': ['  [Delete] コードの削除: Removing code or files.'],
    \ 'bug': ['  [Fix] バグ修正: Fixing a bug.'],
    \ 'memo': ['  [Add,Update] 文書の更新: Add or update documentation.'],
    \ 'pencil2': ['  [Fix] タイポ修正: Fixing typos.'],
    \ 'truck': ['  [Update] ファイル名変更: Moving or renaming files.'],
    \ 'see_no_evil': ['  [Add,Update] .gitignoreの更新: Adding or updating a .gitignore file.'],
    \ 'tada': ['  [Init] 初コミット: Initial commit.'],
    \ 'rewind': ['  [Fix] 元に戻す: Reverting changes.'],
    \ 'alembic': ['  [Test] 新しいこと試す: Experimenting new things.'],
    \ 'alien': ['  [Update] APIの変更に伴う更新: Updating code due to external API changes.'],
    \ 'ambulance': ['  [Fix] 緊急性の高い修正: Critical hotfix.'],
    \ 'arrow_down': ['  [Update] 依存関係をダウングレード: Downgrading dependencies.'],
    \ 'arrow_up': ['  [Update] 依存関係をアップグレード: Upgrading dependencies.'],
    \ 'art': ['  [Update] コードフォーマット: Improving structure / format of the code.'],
    \ 'beers': [' 酒！: Writing code drunkenly.'],
    \ 'bento': ['  [Add,Update] アセットの更新: Adding or updating assets.'],
    \ 'bookmark': ['  [Deploy] リリース: Releasing / Version tags.'],
    \ 'boom': ['  [Update] 破壊的変更: Introducing breaking changes.'],
    \ 'building_construction': [' [Update] アーキテクチャ変更: Making architectural changes.'],
    \ 'bulb': ['  [Add,Update] コメントアウト: Documenting source code.'],
    \ 'busts_in_silhouette': ['  [Add] 開発者追加: Add contributor(s).'],
    \ 'camera_flash': ['  [Add,Update] スナップショットを更新: Adding or updating snapshots.'],
    \ 'card_file_box': ['  [Update] DB関連の更新: Performing database related changes.'],
    \ 'chart_with_upwards_trend': ['  [Add] アナリティクスの追加: Adding analytics or tracking code.'],
    \ 'children_crossing': ['  [Update] UXの向上: Improving user experience / usability.'],
    \ 'clown_face': ['  [Mock] 何かをモック化: Mocking things.'],
    \ 'construction': ['  [Wip] 進行中: Work in progress.'],
    \ 'construction_worker': ['  [Add] CIの追加: Adding CI build system.'],
    \ 'dizzy': ['  [Add,Update] アニメーションの更新: Adding or updating animations and transitions'],
    \ 'egg': ['  [Add,Update] イースターエッグの追加: Adding an easter egg.'],
    \ 'globe_with_meridians': ['  [Update] グローバル化: Internationalization and localization.'],
    \ 'goal_net': ['  [Error] エラーを検知: Catching errors'],
    \ 'green_heart': ['  [Fix] CIの修正: Fixing CI Build.'],
    \ 'heavy_minus_sign': ['  [Delete] 依存関係の削除: Removing a dependency.'],
    \ 'heavy_plus_sign': ['  [Add] 依存関係の追加: Adding a dependency.'],
    \ 'iphone': ['  [Update] レスポンシブに対応: Working on responsive design.'],
    \ 'lipstick': ['  [Update] UIやスタイルの更新 Updating the UI and style files.'],
    \ 'lock': ['  [Fix] セキュリティの修正: Fixing security issues.'],
    \ 'loud_sound': ['  [Add] ログを追加: Adding logs.'],
    \ 'mag': ['  [Update] UEOの向上: Improving SEO.'],
    \ 'mute': ['  [Delete] ログの削除: Removing logs.'],
    \ 'package': ['  [Update] コンパイルファイルの更新: Updating compiled files or packages.'],
    \ 'page_facing_up': ['  [Add,Update] ライセンスの更新 Adding or updating license.'],
    \ 'poop': ['  [Add] 悪いコード書く: Writing bad code that needs to be improved.'],
    \ 'pushpin': ['  [Update] 依存関係のバージョン固定: Pinning dependencies to specific versions.'],
    \ 'recycle': ['  [Refactor] リファクタリング: Refactoring code.'],
    \ 'rocket': ['  [Deploy] デプロイ: Deploying stuff.'],
    \ 'rotating_light': ['  [Update] Lintの警告を解決: Removing linter warnings.'],
    \ 'seedling': ['  [Add,Update] 初期ファイルの更新: Adding or updating seed files'],
    \ 'speech_balloon': ['  [Update] テキストやリテラルの更新: Updating text and literals.'],
    \ 'triangular_flag_on_post': ['  [Add,Update] 条件分岐の更新: Adding, updating, or removing feature flags'],
    \ 'twisted_rightwards_arrows': ['  [Update] マージ: Merging branches.'],
    \ 'wastebasket': ['  [Add] 非推奨なコード: Deprecating code that needs to be cleaned up.'],
    \ 'wheelchair': ['  [Update] アクセシビリティの改善: Improving accessibility.'],
    \ 'white_check_mark': ['  [Update] テストを更新: Updating tests.'],
    \ 'wrench': ['  [Update] 設定ファイルの変更: Changing configuration files.'],
\ }

function! emoji#data#dict()
  return s:emoji_code
endfunction

function emoji#data#gitmoji()
  return s:emoji_gitmoji
endfunction
