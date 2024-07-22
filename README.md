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

## Supported Interfaces

Please consult each respective website for a comprehensive description and usage guidelines.

| Name            | Description                                                                                                             | URL                                                   |
| :-------------- | :---------------------------------------------------------------------------------------------------------------------- | :---------------------------------------------------- |
| Automatic1111   | A browser interface based on Gradio library for Stable Diffusion.                                                       | [https://github.com/AUTOMATIC1111/stable-diffusion-webui](https://github.com/AUTOMATIC1111/stable-diffusion-webui) |
| ComfyUI         | A powerful and modular stable diffusion GUI and backend.                                                                | [https://github.com/comfyanonymous/ComfyUI](https://github.com/comfyanonymous/ComfyUI)  |
| Easy diffusion  | The easiest way to install and use Stable Diffusion on your computer.                                                   | [https://github.com/easydiffusion/easydiffusion](https://github.com/easydiffusion/easydiffusion) |
| FaceFusion      | Next generation face swapper and enhancer.                                                                              | [https://github.com/facefusion/facefusion](https://github.com/facefusion/facefusion) |
| Fooocus         | Fooocus is a rethinking of Stable Diffusion and Midjourney’s designs.                                                   | [https://github.com/lllyasviel/Fooocus](https://github.com/lllyasviel/Fooocus)      |
| Forge           | An optimized fork of Automatic1111.                                                                                     | [https://github.com/lllyasviel/stable-diffusion-webui-forge](https://github.com/lllyasviel/stable-diffusion-webui-forge) |
| InvokeAI        | InvokeAI is a leading creative engine for Stable Diffusion models.                                                      | [https://github.com/invoke-ai](https://github.com/invoke-ai)              |
| Kohya           | Kohya's GUI provides a Windows-focused Gradio GUI for Kohya's Stable Diffusion trainers.                                | [https://github.com/bmaltais/kohya_ss](https://github.com/bmaltais/kohya_ss)         |
| Lama Cleaner    | A free and open-source inpainting tool powered by SOTA AI model.                                                        | [https://github.com/Sanster/lama-cleaner](https://github.com/Sanster/lama-cleaner) |
| SD.Next         | This project started as a fork from Automatic1111 WebUI and it grew significantly.                                      | [https://github.com/vladmandic/automatic](https://github.com/vladmandic/automatic)    |
| SwarmUI         | A modular Stable Diffusion Web-User-Interface, with an emphasis on making powertools easily accessible, high performance, and extensibility.    | [https://github.com/mcmonkeyprojects/SwarmUI](https://github.com/mcmonkeyprojects/SwarmUI) |

## References

- https://github.com/fboulnois/stable-diffusion-docker
- https://github.com/AbdBarho/stable-diffusion-webui-docker
- https://github.com/grokuku/stable-diffusion
