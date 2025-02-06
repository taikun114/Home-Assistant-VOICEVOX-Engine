# Home Assistant VOICEVOX Engine Addon
**English** | [日本語](docs/README-ja.md)

This is an add-on to run the Japanese text-to-speech engine [VOICEVOX Engine](https://github.com/VOICEVOX/voicevox_engine) in Home Assistant.

Using it with [VOICEVOX TTS](https://github.com/taikun114/VOICEVOX-TTS-for-Home-Assistant) custom integration, you can use Japanese TTS with VOICEVOX in Home Assistant.


## Install
>[!NOTE]
>Home Assistant OS or Home Assistant Supervised is required to run add-ons.
>If you are running Home Assistant Core or Home Assistant Container, you cannot use add-ons.

To install the VOICEVOX Engine Addon, you will need to add a repository. Click the button below or add the repository manually.

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Ftaikun114%2FHome-Assistant-VOICEVOX-Engine)

To manually add a repository, follow these steps.
1. Go to `Settings` → `Add-ons` in the Home Assistant.
2. Open the `ADD-ON STORE` in the lower right corner.
3. Click the upper right `... `, then click `Repositories`.
4. in the `Add` section, enter the following URL:

   `https://github.com/taikun114/Home-Assistant-VOICEVOX-Engine`

Once you have added the repository, reload the page and click the `VOICEVOX Engine Addon` that appears to install it.

After installing the add-on, click `START` to launch the VOICEVOX Engine with default settings.


## Configuration
There are some configurations available for this add-on. Please refer to the [add-on documentation page](voicevox_engine_addon/DOCS.md) for more information about the add-on configuration.
