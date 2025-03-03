# Home Assistant VOICEVOX Engine Addon
[English](/voicevox_engine_addon/DOCS.md) | **日本語**

日本語のテキスト読み上げエンジンの[VOICEVOX エンジン](https://github.com/VOICEVOX/voicevox_engine)をHome Assistantで実行するためのアドオンです。

[VOICEVOX TTS](https://github.com/taikun114/VOICEVOX-TTS-for-Home-Assistant)カスタム統合と一緒に使用することで、Home Assistantで、VOICEVOXを使った日本語TTSを利用することができるようになります。


## インストール
>[!NOTE]
>アドオンの実行にはHome Assistant OSまたはHome Assistant Supervisedが必要です。\
>Home Assistant CoreまたはHome Assistant Containerを実行している場合はアドオンを使用することはできません。

VOICEVOX Engine Addonをインストールするには、リポジトリを追加する必要があります。以下のボタンをクリックするか、手動でリポジトリを追加してください。

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Ftaikun114%2FHome-Assistant-VOICEVOX-Engine)

手動でリポジトリを追加する場合、以下の手順で追加します。
1. Home Assistantの`設定` → `アドオン`と進みます。
2. 右下の`アドオンストア`を開きます。
3. 右上の`...`をクリックしたら、`リポジトリ`をクリックします。
4. `追加`のところに、以下のURLを入力します:\
   `https://github.com/taikun114/Home-Assistant-VOICEVOX-Engine`

リポジトリを追加できたら、ページを再読み込みし、表示された`VOICEVOX Engine Addon`をクリックしてインストールします。

アドオンのインストールが終わったら`開始`をクリックすると、デフォルトの設定でVOICEVOX エンジンが起動します。

> [!TIP]
> リポジトリURLの最後に`#dev`を追加する（`https://github.com/taikun114/Home-Assistant-VOICEVOX-Engine#dev`）か、以下のボタンをクリックすることで、開発バージョンのアドオンをインストールすることができます。
>
> [![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Ftaikun114%2FHome-Assistant-VOICEVOX-Engine%23dev)


## 使い方
VOICEVOX エンジンの使い方については、[VOICEVOX エンジンのリポジトリ](https://github.com/VOICEVOX/voicevox_engine)や、[VOICEVOX エンジンのAPIドキュメント](https://voicevox.github.io/voicevox_engine/api/)ページをご覧ください。

また、アドオンの実行中に`http://サーバーのIPアドレス:50021/docs`へアクセスすることでもAPIドキュメントを確認することができます（`WEB UIを開く`クリックし、表示されたページから`API ドキュメント`をクリックしても開くことができます）。


## 設定
オプションについて説明します。すべてのオプションは、変更を適用するにはアドオンを再起動する必要があります。

### CPUスレッド数
音声合成時に使用されるCPUスレッド数を指定できます。デフォルトは`0`で、搭載されているCPUスレッド数の半分が使用されます。

設定可能な範囲は`0`〜`搭載されているCPUスレッド数`です。`搭載されているCPUスレッド数`よりも大きな値が設定された場合は、`0`が使用されます。

### 最大CPUスレッド数を使用する
音声合成時に、搭載されている最大CPUスレッド数を使用するかどうかを設定できます。デフォルトは無効で、有効にすると`CPUスレッド数`オプションで設定した値は無視され、搭載されている最大CPUスレッド数が使用されます。

### 許可するオリジン
`localhost`、`127.0.0.1`、`app://`、`オリジンなし`以外のオリジンからのリクエストを受け入れられるように許可するオリジンを指定します。デフォルトは空で、複数個指定することもできます（その場合は1つずつ指定してください）。

### CORSの許可モード
CORSポリシーを設定することができます。デフォルトは`localapps`で、`all`にするとすべてのオリジンが許可されます。
