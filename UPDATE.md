# 『はじめてのフレームワークとしての FuelPHP 第2版(改訂版)』追加情報

ここでは、本書の執筆時以降のアップデート情報などの追加情報を提供します。

## FuelPHP のアップデートについて

### FuelPHP 1.8.0 について

2016/04/09にFuelPHP 1.8.0がリリースされました。詳細は以下を参照してください。

* http://fuelphp.com/blogs/2016/04/fuelphp-releases-v1-8

本書の手順どおりにFuelPHPをインストールすると1.8.0がインストールされます。

FuelPHP 1.7.3をインストール済みの場合のアップデート方法は [FuelPHP 1.7.3から1.8.0へのアップデート方法](UPDATE_FUELPHP_1.8.0.md) を参照してください。

FuelPHP 1.8.0 (Apache 2.2.29, MySQL 5.5.42, PHP 5.6.10, PHPUnit 3.7.38) で実践編の「コンタクトフォーム」のテストが通ることを確認しました。

### FuelPHP 1.7.3 について

2015/05/20にFuelPHP 1.7.3がリリースされました。詳細は以下を参照してください。

* [FuelPHP 1.7.3がリリースされました](http://blog.a-way-out.net/blog/2015/05/21/fuelphp-1-7-3/)

本書の手順どおりにFuelPHPをインストールすると1.7.3がインストールされます。

FuelPHP 1.7.2を本書の手順でインストール済みの場合のアップデート方法は [FuelPHP 1.7.2から1.7.3へのアップデート方法](UPDATE_FUELPHP_1.7.3.md) を参照してください。

FuelPHP 1.7.3 (Apache 2.2.15, MySQL 5.1.73, PHP 5.5.21, PHPUnit 3.7.38) で実践編の「コンタクトフォーム」のテストが通ることを確認しました。

## (1) 環境構築編

### 2.3 Mac OS X での PHP 開発環境の構築

達人出版会電子版 PDF P.33 / ラトルズ紙版 P.37

MAMP 3.0.5では、Mac OS XをYosemiteにアップデートすると、Apacheが起動しなくなります。`/Applications/MAMP/bin/apache2/bin/envvars`のファイル名を`_envvars`にリネームすると起動できるようになります。

### 3.2 Windows での FuelPHP のインストール

達人出版会電子版 PDF P.56 / ラトルズ紙版 P.64

リスト3.1　FuelPHP 1.7.3から`minimum-stability`は`stable`に変更されましたので、この変更は必要ありません。

`php composer.phar update`コマンドを実行すると、以下のようにトークンを聞かれる場合があります。

> Could not fetch `https://api.github.com/repos/fuel/auth/git/refs/heads?per_page=100`, please create a GitHub OAuth token to go over the API rate limit  
Head to `https://github.com/settings/tokens/new?scopes=repo&description=Composer+on+<servername>+2015-06-26+0933`  
to retrieve a token. It will be stored in "/home/<username>/.composer/auth.json" for future use by Composer.  
Token (hidden): 

これは、GitHub APIのレート制限です。詳細は以下を参照してください。

* [tokenを聞かれFuelPHP 1.7.3がうまくインストールできない場合](http://blog.a-way-out.net/blog/2015/06/26/fuelphp-1-7-3-installation-trouble/)

達人出版会電子版 PDF P.58 / ラトルズ紙版 P.66

`1.8/develop`ブランチからはソースコードをより簡単に`1.8/develop`ブランチに更新できるようになりました。詳細は以下を参照してください。

* [FuelPHP 1.8-devでのComposerによるサブリポジトリの管理](http://blog.a-way-out.net/blog/2015/01/13/fuelphp-1-8-dev-composer-installation/)

達人出版会電子版 PDF P.58 / ラトルズ紙版 P.67

「`--prefer-source`を指定すると`1.8/develop`が、`--prefer-dist`を指定すると`1.7/master`がインストールされる」というFuelPHP独自の仕様は、FuelPHP 1.7.3からなくなりました。また、`composer.lock`を共有すればリビジョンを固定できるようになりました。

### 3.3 Mac OS X での FuelPHP のインストール

達人出版会電子版 PDF P.61 / ラトルズ紙版 P.70

`oil create fuelphp`コマンドを実行すると、以下のようにトークンを聞かれる場合があります。

> Could not fetch `https://api.github.com/repos/fuel/auth/git/refs/heads?per_page=100`, please create a GitHub OAuth token to go over the API rate limit  
Head to `https://github.com/settings/tokens/new?scopes=repo&description=Composer+on+<servername>+2015-06-26+0933`  
to retrieve a token. It will be stored in "/home/<username>/.composer/auth.json" for future use by Composer.  
Token (hidden): 

これは、GitHub APIのレート制限です。詳細は以下を参照してください。

* [tokenを聞かれFuelPHP 1.7.3がうまくインストールできない場合](http://blog.a-way-out.net/blog/2015/06/26/fuelphp-1-7-3-installation-trouble/)

達人出版会電子版 PDF P.62 / ラトルズ紙版 P.71

リスト3.2　FuelPHP 1.7.3から`minimum-stability`は`stable`に変更されましたので、この変更は必要ありません。

### 3.4 GNU/Linux での FuelPHP のインストール

達人出版会電子版 PDF P.64 / ラトルズ紙版 P.74

`oil create fuelphp`コマンドを実行すると、以下のようにトークンを聞かれる場合があります。

> Could not fetch `https://api.github.com/repos/fuel/auth/git/refs/heads?per_page=100`, please create a GitHub OAuth token to go over the API rate limit  
Head to `https://github.com/settings/tokens/new?scopes=repo&description=Composer+on+<servername>+2015-06-26+0933`  
to retrieve a token. It will be stored in "/home/<username>/.composer/auth.json" for future use by Composer.  
Token (hidden): 

これは、GitHub APIのレート制限です。詳細は以下を参照してください。

* [tokenを聞かれFuelPHP 1.7.3がうまくインストールできない場合](http://blog.a-way-out.net/blog/2015/06/26/fuelphp-1-7-3-installation-trouble/)

達人出版会電子版 PDF P.65 / ラトルズ紙版 P.75

リスト3.3　FuelPHP 1.7.3から`minimum-stability`は`stable`に変更されましたので、この変更は必要ありません。

### 4.1 ファイルの操作

達人出版会電子版 PDF P.97 / ラトルズ紙版 P.111

NetBeansのFuelPHPプラグインv1.0.0がリリースされ、「Smart Go To」機能でプレゼンタがサポートされました。

* http://plugins.netbeans.org/plugin/44665/php-fuelphp-framework

## (2) 入門編

## (3) 実践編

### 1.2 / 10.2 コンタクトフォームのコーディング

達人出版会電子版 PDF P.23 / ラトルズ紙版 P.288

本書ではCSRF対策のトークンを手動でチェックしていますが、`csrf_autoload`を`true`にして自動チェックすることも検討してみましょう。自動チェックの方法については以下を参照してください。

* [FuelPHPのcsrf_autoloadはtrueに設定しよう！](http://blog.a-way-out.net/blog/2014/12/21/fuelphp-csrf_autoload/)

### 3.1 / 12.1 Fieldset クラスの使用

達人出版会電子版 PDF P.64 / ラトルズ紙版 P.340

本書ではバリデーションをFieldsetクラスに定義していますが、モデル（Orm\ModelやModel_Crud）で定義する方法もあります。
http://fuelphp.jp/docs/1.8/packages/orm/creating_models.html#/propperties や http://fuelphp.jp/docs/1.8/classes/model_crud/introduction.html#/configuration を参照してください。

### 6.7 / 15.7 その他のケース

達人出版会電子版 PDF P.139 / ラトルズ紙版 P.442

「fuel/app/bootstrap_phpunit.phpの変更点」はFuelPHP 1.7.3に取り込まれました。
