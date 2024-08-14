#!/bin/bash

# This file will be sourced in init.sh

# https://raw.githubusercontent.com/ai-dock/comfyui/main/config/provisioning/default.sh

# Packages are installed after nodes so we can fix them...

PYTHON_PACKAGES=(
    #"opencv-python==4.7.0.72"
    "insightface"
    #"facexlib"
   #  "bitsandbytes"
)

NODES=(
    "https://github.com/ltdrdata/ComfyUI-Manager"
    "https://github.com/WASasquatch/was-node-suite-comfyui"
    "https://github.com/jags111/efficiency-nodes-comfyui"
    "https://github.com/civitai/civitai_comfy_nodes"
    "https://github.com/ltdrdata/ComfyUI-Impact-Pack"
    "https://github.com/ltdrdata/ComfyUI-Inspire-Pack"
    "https://github.com/pythongosssss/ComfyUI-Custom-Scripts"
    # "https://github.com/cubiq/ComfyUI_IPAdapter_plus.git"
    "https://github.com/cubiq/ComfyUI_essentials.git"
   # "https://github.com/cubiq/PuLID_ComfyUI.git"
    "https://github.com/cubiq/ComfyUI_FaceAnalysis"
    "https://github.com/Gourieff/comfyui-reactor-node"
    # "https://github.com/Acly/comfyui-inpaint-nodes.git"
    "https://github.com/zer0TF/cute-comfy"
    # Bits and Bytes Loader
  #  "https://github.com/comfyanonymous/ComfyUI_bitsandbytes_NF4"
)

CHECKPOINT_MODELS=(
    #"https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned-emaonly.ckpt"
    #"https://huggingface.co/stabilityai/stable-diffusion-2-1/resolve/main/v2-1_768-ema-pruned.ckpt"
    #"https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_base_1.0.safetensors"
    #"https://huggingface.co/stabilityai/stable-diffusion-xl-refiner-1.0/resolve/main/sd_xl_refiner_1.0.safetensors"
       # "https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned-emaonly.ckpt"
    # "https://huggingface.co/stabilityai/stable-diffusion-2-1/resolve/main/v2-1_768-ema-pruned.ckpt"
    #"https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_base_1.0.safetensors"
    #"https://huggingface.co/stabilityai/stable-diffusion-xl-refiner-1.0/resolve/main/sd_xl_refiner_1.0.safetensors"
    #Analog Madness
    #"https://civitai.com/api/download/models/261539"
    #Ghostmix v2.0
    # "https://civitai.com/api/download/models/76907"
    #Realistic Vision V6.0 B1
    #"https://civitai.com/api/download/models/245598"
    # Juggernaut XL
    #"https://civitai.com/api/download/models/288982"
    # Juggernaught XL v8
    # "https://civitai.com/api/download/models/348913"
    # ICBINP - "I Can't Believe It's Not Photography" -LCM
    # "https://civitai.com/api/download/models/253668" 
    # RealVisXL V3.0 + Turbo
    # "https://civitai.com/api/download/models/268861"
    # RealVisXL V4
    # "https://civitai.com/api/download/models/344487"
    # PonyXL
    #"https://civitai.com/api/download/models/290640"
    # PICX_Real
    #"https://civitai.com/api/download/models/272376"
    # Pony 🦄FaeTality
    # "https://civitai.com/api/download/models/464939"
    # PianoMix
    #"https://civitai.com/api/download/models/446959"
    # Pony Realism 🔮
    # "https://civitai.com/api/download/models/534642"
    # AutismMix
    #"https://civitai.com/api/download/models/324619"
    # Zonkey
    #"https://civitai.com/api/download/models/537531"
    # Godiva
    # "https://civitai.com/api/download/models/643792"
    # Cyberrealistic PonY 6.9
    #"https://civitai.com/api/download/models/672454"
    # Cyberrealistic PonY 6.1
    #"https://civitai.com/api/download/models/680915"
    
    # bnb-nf4
   # "https://huggingface.co/lllyasviel/flux1-dev-bnb-nf4/resolve/main/flux1-dev-bnb-nf4.safetensors"
    # bnb-schnell
   # "https://civitai.com/api/download/models/714399"

    

)

LORA_MODELS=(
    #
    # X-Labs Lora Collection
    #
    # Flux Furry
    "https://huggingface.co/XLabs-AI/flux-furry-lora/resolve/main/furry_lora.safetensors"
    # Flux Anime
    "https://huggingface.co/XLabs-AI/flux-lora-collection/resolve/main/anime_lora_comfy_converted.safetensors"
    # Flux Art
    "https://huggingface.co/XLabs-AI/flux-lora-collection/resolve/main/art_lora_comfy_converted.safetensors"
    # Flux Disney
    "https://huggingface.co/XLabs-AI/flux-lora-collection/resolve/main/disney_lora_comfy_converted.safetensors"
    # Flux MJv6
    "https://huggingface.co/XLabs-AI/flux-lora-collection/resolve/main/mjv6_lora_comfy_converted.safetensors"
    # Flux Realism
    "https://huggingface.co/XLabs-AI/flux-lora-collection/resolve/main/realism_lora_comfy_converted.safetensors"
    # Flux Scenery
    "https://huggingface.co/XLabs-AI/flux-lora-collection/resolve/main/scenery_lora_comfy_converted.safetensors"
    # Flux NSFW SOCALGUITARIST
    "https://civitai.com/api/download/models/715962"
)

VAE_MODELS=(
   # "https://huggingface.co/stabilityai/sd-vae-ft-ema-original/resolve/main/vae-ft-ema-560000-ema-pruned.safetensors"
   # "https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.safetensors"
   # "https://huggingface.co/stabilityai/sdxl-vae/resolve/main/sdxl_vae.safetensors"
    "https://huggingface.co/black-forest-labs/FLUX.1-schnell/resolve/main/ae.safetensors"
)

ESRGAN_MODELS=(
    "https://huggingface.co/ai-forever/Real-ESRGAN/resolve/main/RealESRGAN_x4.pth"
    "https://huggingface.co/FacehugmanIII/4x_foolhardy_Remacri/resolve/main/4x_foolhardy_Remacri.pth"
    "https://huggingface.co/Akumetsu971/SD_Anime_Futuristic_Armor/resolve/main/4x_NMKD-Siax_200k.pth"
)

IPADAPTER_MODELS=(
    "https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid_sd15.bin"
    "https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-plusv2_sd15.bin"
    "https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-portrait-v11_sd15.bin"
    "https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid_sdxl.bin"
    "https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-plusv2_sdxl.bin"
    "https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-portrait_sdxl.bin"
    "https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-portrait_sdxl_unnorm.bin"

    "https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter_sd15.safetensors"
    "https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter_sd15_light_v11.bin"
    "https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter-plus_sd15.safetensors"
    "https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter-plus-face_sd15.safetensors"
    "https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter-full-face_sd15.safetensors"
    "https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter_sd15_vit-G.safetensors"
    "https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/ip-adapter_sdxl_vit-h.safetensors"
    #"https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/ip-adapter_sdxl.safetensors"
   )

CLIPVISION_MODELS=(
    "https://huggingface.co/h94/IP-Adapter/resolve/main/models/image_encoder/model.safetensors"
    #"https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/ip-adapter_sdxl.safetensors"
   )
CLIP_MODELS=(
    "https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/clip_l.safetensors"
    #"https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/t5xxl_fp16.safetensors"
    "https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/t5xxl_fp8_e4m3fn.safetensors"
    )

FOOOCUS_INPAINT_MODELS=(
    "https://huggingface.co/lllyasviel/fooocus_inpaint/resolve/main/fooocus_inpaint_head.pth"
    "https://huggingface.co/lllyasviel/fooocus_inpaint/resolve/main/inpaint_v26.fooocus.patch"
)
UNET_MODELS=(
    # fp8_e4m3fn  
     "https://huggingface.co/Kijai/flux-fp8/resolve/main/flux1-schnell-fp8.safetensors"
     "https://huggingface.co/Kijai/flux-fp8/resolve/main/flux1-dev-fp8.safetensors"
    # fp8
    #"https://huggingface.co/Comfy-Org/flux1-dev/resolve/main/flux1-dev-fp8.safetensors"
    #"https://huggingface.co/Comfy-Org/flux1-schnell/resolve/main/flux1-schnell-fp8.safetensors"
     )


### DO NOT EDIT BELOW HERE UNLESS YOU KNOW WHAT YOU ARE DOING ###

# Download @ashleykleynhans civitai script from GitHub
function download_script() {
    local script_url="https://raw.githubusercontent.com/ashleykleynhans/civitai-downloader/main/download.py"
    local script_path="/opt/ai-dock/bin/download.py"

    wget -O "$script_path" "$script_url"
    chmod +x "$script_path"
    mkdir $HOME/.civitai/
    echo -n ${CIVITAI_API_KEY} > $HOME/.civitai/config
}

function provisioning_start() {
    DISK_GB_AVAILABLE=$(($(df --output=avail -m "${WORKSPACE}" | tail -n1) / 1000))
    DISK_GB_USED=$(($(df --output=used -m "${WORKSPACE}" | tail -n1) / 1000))
    DISK_GB_ALLOCATED=$(($DISK_GB_AVAILABLE + $DISK_GB_USED))
    provisioning_print_header
    provisioning_get_nodes
    provisioning_install_python_packages
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/ckpt" \
        "${CHECKPOINT_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/lora" \
        "${LORA_MODELS[@]}"
  #  provisioning_get_models \
  #      "${WORKSPACE}/storage/stable_diffusion/models/controlnet" \
  #      "${CONTROLNET_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/vae" \
        "${VAE_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/esrgan" \
        "${ESRGAN_MODELS[@]}"
   # provisioning_get_models \
   #     "${WORKSPACE}/storage/stable_diffusion/models/ipadapter" \
   #     "${IPADAPTER_MODELS[@]}"
   # provisioning_get_models \
   #     "${WORKSPACE}/storage/stable_diffusion/models/clip_vision" \
   #     "${CLIPVISION_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/clip" \
        "${CLIP_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/unet" \
        "${UNET_MODELS[@]}"
   # provisioning_get_models \
   #     "${WORKSPACE}/storage/stable_diffusion/models/inpaint" \
   #     "${FOOOCUS_INPAINT_MODELS[@]}"
    provisioning_print_end
}

function provisioning_get_nodes() {
    for repo in "${NODES[@]}"; do
        dir="${repo##*/}"
        path="/opt/ComfyUI/custom_nodes/${dir}"
        requirements="${path}/requirements.txt"
        if [[ -d $path ]]; then
            if [[ ${AUTO_UPDATE,,} != "false" ]]; then
                printf "Updating node: %s...\n" "${repo}"
                ( cd "$path" && git pull )
                if [[ -e $requirements ]]; then
                    micromamba -n comfyui run ${PIP_INSTALL} -r "$requirements"
                fi
            fi
        else
            printf "Downloading node: %s...\n" "${repo}"
            git clone "${repo}" "${path}" --recursive
            if [[ -e $requirements ]]; then
                micromamba -n comfyui run ${PIP_INSTALL} -r "${requirements}"
            fi
        fi
    done
}

function provisioning_install_python_packages() {
    if [ ${#PYTHON_PACKAGES[@]} -gt 0 ]; then
        micromamba -n comfyui run ${PIP_INSTALL} ${PYTHON_PACKAGES[*]}
    fi
}

function provisioning_get_models() {
    if [[ -z $2 ]]; then return 1; fi
    dir="$1"
    mkdir -p "$dir"
    shift
    if [[ $DISK_GB_ALLOCATED -ge $DISK_GB_REQUIRED ]]; then
        arr=("$@")
    else
        printf "WARNING: Low disk space allocation - Only the first model will be downloaded!\n"
        arr=("$1")
    fi
    
    printf "Downloading %s model(s) to %s...\n" "${#arr[@]}" "$dir"
    for url in "${arr[@]}"; do
        printf "Downloading: %s\n" "${url}"
        provisioning_download "${url}" "${dir}"
        printf "\n"
    done
}

function provisioning_print_header() {
    printf "\n##############################################\n#                                            #\n#          Provisioning container            #\n#                                            #\n#         This will take some time           #\n#                                            #\n# Your container will be ready on completion #\n#                                            #\n##############################################\n\n"
    if [[ $DISK_GB_ALLOCATED -lt $DISK_GB_REQUIRED ]]; then
        printf "WARNING: Your allocated disk size (%sGB) is below the recommended %sGB - Some models will not be downloaded\n" "$DISK_GB_ALLOCATED" "$DISK_GB_REQUIRED"
    fi
}

function provisioning_print_end() {
    printf "\nProvisioning complete:  Web UI will start now\n\n"
}

# Download from $1 URL to $2 file path
#function provisioning_download() {
#    wget -qnc --content-disposition --show-progress -e dotbytes="${3:-4M}" -P "$2" "$1"
#}

function provisioning_download() {
    if [[ "$1" == *"civitai.com"* ]]; then
        #if [[ -n "$token" ]]; then
            /opt/ai-dock/bin/download.py "$1" "$2"
    else
        wget -qnc --content-disposition --show-progress -e dotbytes="${3:-4M}" -P "$2" "$1"
    fi
}

download_script
provisioning_start
