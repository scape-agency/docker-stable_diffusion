# Stable Diffusion Docker

## Supported Models

A variety of models are supported. These models offer a variety of styles and capabilities, ranging from realistic to anime-inspired outputs. You can explore more models and their details on the [Hugging Face Model Hub](https://huggingface.co/models?other=stable-diffusion&sort=likes). Supported models include:

| Provider          | Model Name                                                                                                        | Option using `--model`                        |
| :---------------- | :---------------------------------------------------------------------------------------------------------------- | :-------------------------------------------- |
| CompVis           | [Stable Diffusion 1.0](https://huggingface.co/CompVis/stable-diffusion)                                           | `'CompVis/stable-diffusion'`                  |
| CompVis           | [Stable Diffusion 1.4](https://huggingface.co/CompVis/stable-diffusion-v1-4)                                      | `'CompVis/stable-diffusion-v1-4'`             |
| Runway ML         | [Stable Diffusion 1.5](https://huggingface.co/runwayml/stable-diffusion-v1-5)                                     | `'runwayml/stable-diffusion-v1-5'`            |
| Stability AI      | [Stable Diffusion 2.0](https://huggingface.co/stabilityai/stable-diffusion-2)                                     | `'stabilityai/stable-diffusion-2'`            |
| Stability AI      | [Stable Diffusion 2.1](https://huggingface.co/stabilityai/stable-diffusion-2-1)                                   | `'stabilityai/stable-diffusion-2-1'`          |
| Stability AI      | [Stable Diffusion XL Base 1.0](https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0)                   | `'stabilityai/stable-diffusion-xl-base-1.0'`  |
| Stability AI      | [Stable Diffusion XL Refiner 1.0](https://huggingface.co/stabilityai/stable-diffusion-xl-refiner-1.0)               | `'stabilityai/stable-diffusion-xl-refiner-1.0'`  |
| Stability AI      | [Stable Diffusion 3 Medium](https://huggingface.co/stabilityai/stable-diffusion-3-medium)                         | `'stable-diffusion-3-medium'`                 |
| Dreamlike Art     | [Dreamlike Diffusion 1.0](https://huggingface.co/dreamlike-art/dreamlike-diffusion-1.0)                           | `'dreamlike-art/dreamlike-diffusion-1.0'`     |
| Dreamlike Art     | [Dreamlike Diffusion 2.0](https://huggingface.co/dreamlike-art/dreamlike-diffusion-2.0)                           | `'dreamlike-art/dreamlike-diffusion-2.0'`     |
| Dreamlike Art     | [Dreamlike Photoreal 2.0](https://huggingface.co/dreamlike-art/dreamlike-photoreal-2.0)                           | `'dreamlike-art/dreamlike-photoreal-2.0'`     |
| Hakurei           | [Waifu Diffusion 1.3](https://huggingface.co/hakurei/waifu-diffusion-v1-3)                                        | `'hakurei/waifu-diffusion-v1-3'`              |
| Hakurei           | [Waifu Diffusion 1.4](https://huggingface.co/hakurei/waifu-diffusion-v1-4)                                        | `'hakurei/waifu-diffusion-v1-4'`              |
| PromptHero        | [OpenJourney 1.0](https://huggingface.co/prompthero/openjourney)                                                  | `'prompthero/openjourney'`                    |
| ByteDance         | [SDXL-Lightning](https://huggingface.co/ByteDance/SDXL-Lightning)                                                 | `'ByteDance/SDXL-Lightning'`                  |
| Monster Labs      | [Controlnet QR Code Monster v2 For SD-1.5](https://huggingface.co/monster-labs/control_v1p_sd15_qrcode_monster)   | `'monster-labs/control_v1p_sd15_qrcode_monster'`|
| Nitrosocke        | [Ghibli-Diffusion](https://huggingface.co/nitrosocke/Ghibli-Diffusion)                                            | `'nitrosocke/Ghibli-Diffusion'`                  |

### Example Usage

To use a specific model, simply pass the corresponding option to the `--model` argument in your command.

```sh
python scripts/txt2img.py --model 'stabilityai/stable-diffusion-2-1' --prompt "A futuristic cityscape" --plms
```

```sh
./build.sh run --model 'prompthero/openjourney' --prompt 'abstract art'
```

This command runs the Stable Diffusion 2.1 model to generate an image based on the prompt "A futuristic cityscape" using the PLMS sampling method.






https://github.com/fboulnois/stable-diffusion-docker
https://github.com/AbdBarho/stable-diffusion-webui-docker


# Stable Diffusion WebUI Docker

Run Stable Diffusion on your machine with a nice UI without any hassle!

## Setup & Usage

Visit the wiki for [Setup](https://github.com/AbdBarho/stable-diffusion-webui-docker/wiki/Setup) and [Usage](https://github.com/AbdBarho/stable-diffusion-webui-docker/wiki/Usage) instructions, checkout the [FAQ](https://github.com/AbdBarho/stable-diffusion-webui-docker/wiki/FAQ) page if you face any problems, or create a new issue!

## Features

This repository provides multiple UIs for you to play around with stable diffusion:

### [AUTOMATIC1111](https://github.com/AUTOMATIC1111/stable-diffusion-webui)

[Full feature list here](https://github.com/AUTOMATIC1111/stable-diffusion-webui-feature-showcase), Screenshots:

| Text to image                                                                                              | Image to image                                                                                             | Extras                                                                                                     |
| ---------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------- |
| ![](https://user-images.githubusercontent.com/24505302/189541954-46afd772-d0c8-4005-874c-e2eca40c02f2.jpg) | ![](https://user-images.githubusercontent.com/24505302/189541956-5b528de7-1b5d-479f-a1db-d3f5a53afc59.jpg) | ![](https://user-images.githubusercontent.com/24505302/189541957-cf78b352-a071-486d-8889-f26952779a61.jpg) |

### [ComfyUI](https://github.com/comfyanonymous/ComfyUI)

[Full feature list here](https://github.com/comfyanonymous/ComfyUI#features), Screenshot:

| Workflow                                                                         |
| -------------------------------------------------------------------------------- |
| ![](https://github.com/comfyanonymous/ComfyUI/raw/master/comfyui_screenshot.png) |

## Contributing

Contributions are welcome! **Create a discussion first of what the problem is and what you want to contribute (before you implement anything)**

## Disclaimer

The authors of this project are not responsible for any content generated using this interface.

This license of this software forbids you from sharing any content that violates any laws, produce any harm to a person, disseminate any personal information that would be meant for harm, spread misinformation and target vulnerable groups. For the full list of restrictions please read [the license](./LICENSE).

## Thanks

Special thanks to everyone behind these awesome projects, without them, none of this would have been possible:

- [AUTOMATIC1111/stable-diffusion-webui](https://github.com/AUTOMATIC1111/stable-diffusion-webui)
- [InvokeAI](https://github.com/invoke-ai/InvokeAI)
- [ComfyUI](https://github.com/comfyanonymous/ComfyUI)
- [CompVis/stable-diffusion](https://github.com/CompVis/stable-diffusion)
- [Sygil-webui](https://github.com/Sygil-Dev/sygil-webui)
- and many many more.
