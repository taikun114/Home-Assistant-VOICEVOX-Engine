# Home Assistant VOICEVOX Engine Addon
[English](/README.md) | **日本語**

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


## 設定
このアドオンには、いくつかの設定が用意されています。アドオンの設定については、[アドオンのドキュメントページ](DOCS-ja.md)をご覧ください。

