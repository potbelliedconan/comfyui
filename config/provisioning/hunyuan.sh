#!/bin/bash

# This file will be sourced in init.sh

# https://raw.githubusercontent.com/ai-dock/comfyui/main/config/provisioning/default.sh

# Packages are installed after nodes so we can fix them...

DEFAULT_WORKFLOW="https://raw.githubusercontent.com/Lightricks/ComfyUI-LTXVideo/refs/heads/master/assets/ltxvideo-i2v.json"
APT_PACKAGES=(
    #"package-1"
    #"package-2"
    #"git-lfs"
)

PIP_PACKAGES=(
    #"package-1"
    #"package-2"
)

NODES=(
    "https://github.com/ltdrdata/ComfyUI-Manager"
   # "https://github.com/WASasquatch/was-node-suite-comfyui"
   # "https://github.com/jags111/efficiency-nodes-comfyui"
   # "https://github.com/civitai/civitai_comfy_nodes"
   # "https://github.com/ltdrdata/ComfyUI-Impact-Pack"
    #"https://github.com/ltdrdata/ComfyUI-Inspire-Pack"
    
    # "https://github.com/cubiq/ComfyUI_IPAdapter_plus.git"
    # "https://github.com/cubiq/ComfyUI_essentials.git"
    #"https://github.com/cubiq/PuLID_ComfyUI.git"
    #"https://github.com/cubiq/ComfyUI_FaceAnalysis"
    #"https://github.com/Gourieff/comfyui-reactor-node"
    # "https://github.com/Acly/comfyui-inpaint-nodes.git"
    "https://github.com/zer0TF/cute-comfy"
    # Bits and Bytes Loader
  #  "https://github.com/comfyanonymous/ComfyUI_bitsandbytes_NF4"
   # "https://github.com/Lightricks/ComfyUI-LTXVideo"
   # "https://github.com/logtd/ComfyUI-LTXTricks"
   # "https://github.com/kijai/ComfyUI-Florence2"
   # "https://github.com/melMass/comfy_mtb"
   # "https://github.com/un-seen/comfyui-tensorops"

    "https://github.com/kijai/ComfyUI-KJNodes"
    "https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite"
    "https://github.com/kijai/ComfyUI-Florence2"
    "https://github.com/pythongosssss/ComfyUI-Custom-Scripts"
    "https://github.com/Fannovel16/ComfyUI-Frame-Interpolation"
    
   
)

CHECKPOINT_MODELS=(
"https://huggingface.co/Lightricks/LTX-Video/resolve/main/ltx-video-2b-v0.9.safetensors"
)

CLIP_MODELS=(
    "https://huggingface.co/Comfy-Org/HunyuanVideo_repackaged/blob/main/split_files/text_encoders/clip_l.safetensors"
    "ttps://huggingface.co/Comfy-Org/HunyuanVideo_repackaged/blob/main/split_files/text_encoders/llava_llama3_fp8_scaled.safetensors"
   
)

UNET_MODELS=(
     # fp8_e4m3fn  
)

VAE_MODELS=(
      "https://huggingface.co/Kijai/HunyuanVideo_comfy/blob/main/hunyuan_video_vae_bf16.safetensors"
)

LORA_MODELS=(
    "https://civitai.com/api/download/models/1375664"
    "https://civitai.com/api/download/models/1363026"
    "https://civitai.com/api/download/models/1358969"
    "https://civitai.com/api/download/models/1345795"
    "https://civitai.com/api/download/models/1321779"
)
DIFFUSION_MODELS=(
    "https://huggingface.co/Kijai/SkyReels-V1-Hunyuan_comfy/blob/main/skyreels-hunyuan-I2V-Q5_K_M.gguf"
)
HF_PVT_MODELS=(
    ""
)


ESRGAN_MODELS=(
    "https://huggingface.co/ai-forever/Real-ESRGAN/resolve/main/RealESRGAN_x4.pth"
    "https://huggingface.co/FacehugmanIII/4x_foolhardy_Remacri/resolve/main/4x_foolhardy_Remacri.pth"
    "https://huggingface.co/Akumetsu971/SD_Anime_Futuristic_Armor/resolve/main/4x_NMKD-Siax_200k.pth"
)

CONTROLNET_MODELS=(
)

### DO NOT EDIT BELOW HERE UNLESS YOU KNOW WHAT YOU ARE DOING ###

function download_script() {
    local script_url="https://raw.githubusercontent.com/ashleykleynhans/civitai-downloader/main/download.py"
    local script_path="/opt/ai-dock/bin/download.py"

    wget -O "$script_path" "$script_url"
    chmod +x "$script_path"
    mkdir $HOME/.civitai/
    echo -n ${CIVITAI_API_KEY} > $HOME/.civitai/config
}
function download_text_encoders() {

    mkdir -p text_encoders
    cd text_encoders
    git clone https://huggingface.co/PixArt-alpha/PixArt-XL-2-1024-MS

}
function provisioning_start() {
    if [[ ! -d /opt/environments/python ]]; then 
        export MAMBA_BASE=true
    fi
    source /opt/ai-dock/etc/environment.sh
    source /opt/ai-dock/bin/venv-set.sh comfyui

    # Get licensed models if HF_TOKEN set & valid
    # if provisioning_has_valid_hf_token; then
    #    UNET_MODELS+=("https://huggingface.co/black-forest-labs/FLUX.1-dev/resolve/main/flux1-dev.safetensors")
    #    VAE_MODELS+=("https://huggingface.co/black-forest-labs/FLUX.1-dev/resolve/main/ae.safetensors")
    # else
    #    UNET_MODELS+=("https://huggingface.co/black-forest-labs/FLUX.1-schnell/resolve/main/flux1-schnell.safetensors")
    #    VAE_MODELS+=("https://huggingface.co/black-forest-labs/FLUX.1-schnell/resolve/main/ae.safetensors")
    #    sed -i 's/flux1-dev\.safetensors/flux1-schnell.safetensors/g' /opt/ComfyUI/web/scripts/defaultGraph.js
    #fi

    download_script
    provisioning_print_header
    provisioning_get_apt_packages
    provisioning_get_default_workflow
    provisioning_get_nodes
    provisioning_get_pip_packages
    #provisioning_get_models \
    #    "${WORKSPACE}/storage/stable_diffusion/models/ckpt" \
    #    "${CHECKPOINT_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/lora" \
        "${LORA_MODELS[@]}"
    provisioning_get_models \
       "${WORKSPACE}/storage/stable_diffusion/models/diffusion_models" \
       "${DIFFUSION_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/vae" \
        "${VAE_MODELS[@]}"
   # provisioning_get_models \
   #      "${WORKSPACE}/storage/stable_diffusion/models/esrgan" \
   #     "${ESRGAN_MODELS[@]}"
   # provisioning_get_models \
   #     "${WORKSPACE}/storage/stable_diffusion/models/ipadapter" \
   #     "${IPADAPTER_MODELS[@]}"
   # provisioning_get_models \
   #     "${WORKSPACE}/storage/stable_diffusion/models/clip_vision" \
   #     "${CLIPVISION_MODELS[@]}"
     provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/clip" \
        "${CLIP_MODELS[@]}"
   # provisioning_get_models \
   #     "${WORKSPACE}/storage/stable_diffusion/models/unet" \
   #     "${UNET_MODELS[@]}"
   # provisioning_get_models \
   #     "${WORKSPACE}/storage/stable_diffusion/models/inpaint" \
   #     "${FOOOCUS_INPAINT_MODELS[@]}"
   # download_text_encoders
   provisioning_print_end
}

function pip_install() {
    if [[ -z $MAMBA_BASE ]]; then
            "$COMFYUI_VENV_PIP" install --no-cache-dir "$@"
        else
            micromamba run -n comfyui pip install --no-cache-dir "$@"
        fi
}

function provisioning_get_apt_packages() {
    if [[ -n $APT_PACKAGES ]]; then
            sudo $APT_INSTALL ${APT_PACKAGES[@]}
    fi
}

function provisioning_get_pip_packages() {
    if [[ -n $PIP_PACKAGES ]]; then
            pip_install ${PIP_PACKAGES[@]}
    fi
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
                   pip_install -r "$requirements"
                fi
            fi
        else
            printf "Downloading node: %s...\n" "${repo}"
            git clone "${repo}" "${path}" --recursive
            if [[ -e $requirements ]]; then
                pip_install -r "${requirements}"
            fi
        fi
    done
}

function provisioning_get_default_workflow() {
    if [[ -n $DEFAULT_WORKFLOW ]]; then
        workflow_json=$(curl -s "$DEFAULT_WORKFLOW")
        if [[ -n $workflow_json ]]; then
            echo "export const defaultGraph = $workflow_json;" > /opt/ComfyUI/web/scripts/defaultGraph.js
        fi
    fi
}

function provisioning_get_models() {
    if [[ -z $2 ]]; then return 1; fi
    
    dir="$1"
    mkdir -p "$dir"
    shift
    arr=("$@")
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

function provisioning_has_valid_hf_token() {
    [[ -n "$HF_TOKEN" ]] || return 1
    url="https://huggingface.co/api/whoami-v2"

    response=$(curl -o /dev/null -s -w "%{http_code}" -X GET "$url" \
        -H "Authorization: Bearer $HF_TOKEN" \
        -H "Content-Type: application/json")

    # Check if the token is valid
    if [ "$response" -eq 200 ]; then
        return 0
    else
        return 1
    fi
}

function provisioning_has_valid_civitai_token() {
    [[ -n "$CIVITAI_TOKEN" ]] || return 1
    url="https://civitai.com/api/v1/models?hidden=1&limit=1"

    response=$(curl -o /dev/null -s -w "%{http_code}" -X GET "$url" \
        -H "Authorization: Bearer $CIVITAI_TOKEN" \
        -H "Content-Type: application/json")

    # Check if the token is valid
    if [ "$response" -eq 200 ]; then
        return 0
    else
        return 1
    fi
}

# Download from $1 URL to $2 file path
function provisioning_download() {
    if [[ -n $HF_TOKEN && $1 =~ ^https://([a-zA-Z0-9_-]+\.)?huggingface\.co(/|$|\?) ]]; then
        auth_token="$HF_TOKEN"
    elif 
        [[ -n $CIVITAI_TOKEN && $1 =~ ^https://([a-zA-Z0-9_-]+\.)?civitai\.com(/|$|\?) ]]; then
        auth_token="$CIVITAI_TOKEN"
    fi
    if [[ -n $auth_token ]];then
        wget --header="Authorization: Bearer $auth_token" -qnc --content-disposition --show-progress -e dotbytes="${3:-4M}" -P "$2" "$1"
    else
        wget -qnc --content-disposition --show-progress -e dotbytes="${3:-4M}" -P "$2" "$1"
    fi
}

provisioning_start
