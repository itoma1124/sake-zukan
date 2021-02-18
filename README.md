# 僕の私の酒図鑑

## アプリケーション概要
  このアプリでは、飲んだお酒の情報を登録することができます。また他の人の投稿を見て、次のお酒を見つける手助けをすることもできるでしょう。

## URL

## テスト用アカウント

## 利用方法
  お酒を飲んだら、このアプリに登録しましょう。また、情報を追加し図鑑を完成させましょう。

## 目指した課題解決
  このアプリは、私や同じような人が日本酒の味を記憶していないという問題を解決するために開発されました。日本酒が好きで飲むのですが、飲んだという記憶はあれどどんな味だったか、何と合わせたら美味しかったか全くと言っていいほど覚えていません。酔った時の記憶とは当てにならないものです。そこで、味をメモする場所を提供しようとこのアプリを開発しました。

## 洗い出した用件

  ### <ユーザー>
    登録
      - アイコン画像
      - 画像プレビュー
    編集
      - アイコン画像
      - 画像プレビュー
    削除(退会)
    ログイン・ログアウト
    マイページ
      - 自分の投稿の表示
      - メモ完成チェック
      - お気に入りリストの表示
  ### <酒>
    一覧表示
      - ページネーション
      - キーワード検索
      - 絞り込み検索
      - 昇順降順表示
      - お気に入り登録/ 削除
      - お気に入り数ランキング
      - ユーザー投稿数ランキング
    詳細表示
      - 酒情報の表示
      - コメント投稿/表示/削除
      - 似ているお酒の表示
    新規投稿
      - 画像投稿
      - 画像プレビュー
      - セレクトボックス
    編集
      - 画像投稿
      - 画像プレビュー
      - セレクトボックス
    削除
  ### <コメント>
    投稿
    削除
    非同期通信
  ### <お気に入り>
    投稿
    削除
    非同期通信
  ### <タグ>
    作成
    削除
    絞り込み検索
    非同期通信
  ### <酒蔵>
    新規登録
    削除
    
## 実装した機能についてのGIFと説明

### ユーザー登録
https://github.com/itoma1124/sake-zukan/issues/23#issue-807927003
### ユーザー情報編集
https://github.com/itoma1124/sake-zukan/issues/22#issue-807926945
### ログイン・ログアウト
https://github.com/itoma1124/sake-zukan/issues/21#issue-807926655
### マイページ
https://github.com/itoma1124/sake-zukan/issues/31#issue-807927484
### 酒　新規投稿
https://github.com/itoma1124/sake-zukan/issues/27#issue-807927285
### 酒　編集
https://github.com/itoma1124/sake-zukan/issues/28#issue-807927341
### 酒　削除
https://github.com/itoma1124/sake-zukan/issues/26#issue-807927153
### 酒　お気に入り機能
https://github.com/itoma1124/sake-zukan/issues/29#issue-807927387
### 酒　検索・ソート機能
https://github.com/itoma1124/sake-zukan/issues/25#issue-807927132
###　ランキング機能
https://github.com/itoma1124/sake-zukan/issues/24#issue-807927054
    

## 実装予定の機能
  ### <ユーザー>
    削除(退会)
  ### <酒>
    詳細表示
      - タグの作成/表示/削除
  ### <コメント>
    非同期通信
  ### <タグ>
    作成
    削除
    絞り込み検索
    非同期通信
  ### <酒蔵>
    新規登録
    削除
    

## データベース設計
  ![image](sake-zukan.png)

## ローカルでの動作方法
  ruby 2.6.5
  Rails 6.0.3.4

  % git clone https://github.com/itoma1124/sake-zukan.git

  % rails g devise:install

  % brew install imagemagick

  % rails active_storage:install

  % bundle install

  % rails db:create

  % rails db:migrate

  % rails s


