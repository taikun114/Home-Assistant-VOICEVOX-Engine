# Home Assistant VOICEVOX Engine Addon (Dev)
**English** | [日本語](https://github.com/taikun114/Home-Assistant-VOICEVOX-Engine/blob/dev/docs/DOCS-ja.md)

This is an add-on to run the Japanese text-to-speech engine [VOICEVOX Engine](https://github.com/VOICEVOX/voicevox_engine) in Home Assistant.

Using it with [VOICEVOX TTS](https://github.com/taikun114/VOICEVOX-TTS-for-Home-Assistant) custom integration, you can use Japanese TTS with VOICEVOX in Home Assistant.

> [!NOTE]
> This is a development version of the add-on. Some features may not work properly or may be unstable.


## Install
>[!NOTE]
> Home Assistant OS or Home Assistant Supervised is required to run add-ons.\
> If you are running Home Assistant Core or Home Assistant Container, you cannot use add-ons.

To install the VOICEVOX Engine Addon, you will need to add a repository. Click the button below or add the repository manually.

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Ftaikun114%2FHome-Assistant-VOICEVOX-Engine)

To manually add a repository, follow these steps.
1. Go to `Settings` → `Add-ons` in the Home Assistant.
2. Open the `ADD-ON STORE` in the lower right corner.
3. Click the upper right `...`, then click `Repositories`.
4. In the `Add` section, enter the following URL:\
   `https://github.com/taikun114/Home-Assistant-VOICEVOX-Engine`

Once you have added the repository, reload the page and click the `VOICEVOX Engine Addon` that appears to install it.

After installing the add-on, click `START` to launch the VOICEVOX Engine with default settings.

> [!TIP]
> You can install the development version of the add-on by adding `#dev` to the end of the repository URL (`https://github.com/taikun114/Home-Assistant-VOICEVOX-Engine#dev`) or by clicking the button below.
>
> [![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Ftaikun114%2FHome-Assistant-VOICEVOX-Engine%23dev)


## How to use
See the [VOICEVOX Engine Repository](https://github.com/VOICEVOX/voicevox_engine) and the [VOICEVOX Engine API Documentation](https://voicevox.github.io/voicevox_engine/api/) page for how to use the VOICEVOX Engine.

You can also view the API documentation by accessing `http://ServerIPAddress:50021/docs` while the add-on is running (you can also open it by clicking `OPEN WEB UI` and then clicking `API ドキュメント` from the page that opens).


## Configuration
This section describes the options. All options require a restart of the add-on for the changes to take effect.

### CPU Threads
You can specify the number of CPU threads used during voice synthesis. The default is `0`, which means half of the number of CPU threads available will be used.

Possible range is from `0` to `Number of CPU threads available`. If a value bigger than `Number of CPU threads available` is set, `0` will be used.

### Use Max CPU Threads
You can set whether or not the maximum number of CPU threads available should be used during voice synthesis. The default is disabled, and when enabled, the value set in the `CPU Threads` option is ignored and the maximum number of CPU threads available is used.

### Allow Origins
Specifies the origin to allow to accept requests from origins other than `localhost`, `127.0.0.1`, `app://`, or `no origin`. The default is empty, multiple can be specified (in which case, specify one at a time).

### CORS Policy Mode
You can set the CORS policy. The default is `localapps`, and when set to `all`, all origins are allowed.
