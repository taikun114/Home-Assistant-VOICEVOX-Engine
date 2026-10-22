# Home Assistant VOICEVOX Engine App
**English** | [日本語](docs/README-ja.md)

This is an app to run the Japanese text-to-speech engine [VOICEVOX Engine](https://github.com/VOICEVOX/voicevox_engine) in Home Assistant.

Using it with [VOICEVOX TTS](https://github.com/taikun114/VOICEVOX-TTS-for-Home-Assistant) custom integration, you can use Japanese TTS with VOICEVOX in Home Assistant.


## Install
>[!NOTE]
> Home Assistant OS or Home Assistant Supervised is required to run apps.\
> If you are running Home Assistant Core or Home Assistant Container, you cannot use apps.

To install the VOICEVOX Engine App, you will need to add a repository. Click the button below or add the repository manually.

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Ftaikun114%2FHome-Assistant-VOICEVOX-Engine)

To manually add a repository, follow these steps.
1. Go to `Settings` → `Apps` in the Home Assistant.
2. Open the `Install apps` in the lower right corner.
3. Click the upper right `...`, then click `Repositories`.
4. In the `Add` section, enter the following URL:\
   `https://github.com/taikun114/Home-Assistant-VOICEVOX-Engine`

Once you have added the repository, reload the page and click the `VOICEVOX Engine App` that appears to install it.

After installing the app, click `START` to launch the VOICEVOX Engine with default settings.

> [!TIP]
> You can install the development version of the app by adding `#dev` to the end of the repository URL (`https://github.com/taikun114/Home-Assistant-VOICEVOX-Engine#dev`) or by clicking the button below.
>
> [![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Ftaikun114%2FHome-Assistant-VOICEVOX-Engine%23dev)


## Configuration
There are some configurations available for this app. Please refer to the [app documentation page](voicevox_engine_addon/DOCS.md) for more information about the app configuration.
