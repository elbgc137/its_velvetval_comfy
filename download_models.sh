#!/bin/bash
echo "=== Descargando modelos durante Build ==="

cd /workspace/runpod-slim/ComfyUI/models

mkdir -p unet text_encoders vae loras

wget -q --show-progress -O unet/z_image_turbo_bf16.safetensors \
  "https://huggingface.co/Comfy-Org/z_image_turbo/resolve/main/split_files/diffusion_models/z_image_turbo_bf16.safetensors?download=true"

wget -q --show-progress -O text_encoders/qwen_3_4b.safetensors \
  "https://huggingface.co/Comfy-Org/z_image_turbo/resolve/main/split_files/text_encoders/qwen_3_4b.safetensors?download=true"

wget -q --show-progress -O vae/ae.safetensors \
  "https://huggingface.co/Comfy-Org/z_image_turbo/resolve/main/split_files/vae/ae.safetensors?download=true"

wget -q --show-progress -O loras/lenovo_z.safetensors \
  "https://huggingface.co/Danrisi/Lenovo_UltraReal_Z_Image/resolve/main/lenovo_z.safetensors?download=true"

echo "=== Modelos baked-in correctamente ==="
