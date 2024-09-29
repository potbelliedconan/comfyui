#!/bin/bash

# This file will be sourced in init.sh

# https://raw.githubusercontent.com/ai-dock/comfyui/main/config/provisioning/default.sh

# Packages are installed after nodes so we can fix them...

DEFAULT_WORKFLOW="https://raw.githubusercontent.com/ai-dock/comfyui/main/config/workflows/flux-comfyui-example.json"

APT_PACKAGES=(
    #"package-1"
    #"package-2"
)

PIP_PACKAGES=(
    #"package-1"
    #"package-2"
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
    #"https://github.com/cubiq/PuLID_ComfyUI.git"
    "https://github.com/cubiq/ComfyUI_FaceAnalysis"
    "https://github.com/Gourieff/comfyui-reactor-node"
    # "https://github.com/Acly/comfyui-inpaint-nodes.git"
    "https://github.com/zer0TF/cute-comfy"
    # Bits and Bytes Loader
  #  "https://github.com/comfyanonymous/ComfyUI_bitsandbytes_NF4"
)

CHECKPOINT_MODELS=(
)

CLIP_MODELS=(
    "https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/clip_l.safetensors"
    "https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/t5xxl_fp16.safetensors"
    "https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/clip_l.safetensors"
    "https://huggingface.co/zer0int/CLIP-GmP-ViT-L-14/blob/main/ViT-L-14-TEXT-detail-improved-hiT-GmP-TE-only-HF.safetensors"
    "https://civitai.com/api/download/models/892116"
    #"https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/t5xxl_fp16.safetensors"
    "https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/t5xxl_fp8_e4m3fn.safetensors"
   
)

UNET_MODELS=(
     # fp8_e4m3fn  
     "https://huggingface.co/Kijai/flux-fp8/resolve/main/flux1-schnell-fp8.safetensors"
     "https://huggingface.co/Kijai/flux-fp8/resolve/main/flux1-dev-fp8.safetensors" 
    # "https://civitai.com/api/download/models/770213" 
    # Flux unchained
      #"https://civitai.com/api/download/models/742989" 
     # Vision Realistic
     # "https://civitai.com/api/download/models/694648" 
      # Uncensored Females (FLUX) **FP8/FP16 & CLIP-L in FP8**
      "https://civitai.com/api/download/models/892116" 
      "https://civitai.com/api/download/models/877366"
    # fp8
    "https://huggingface.co/Comfy-Org/flux1-dev/resolve/main/flux1-dev-fp8.safetensors"
    #"https://huggingface.co/Comfy-Org/flux1-schnell/resolve/main/flux1-schnell-fp8.safetensors"
    "https://civitai.com/api/download/models/866966"
)

VAE_MODELS=(
      "https://huggingface.co/black-forest-labs/FLUX.1-schnell/resolve/main/ae.safetensors"
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
    # Flux Black Life
    "https://civitai.com/api/download/models/796050"
        # Flux NSFW SOCALGUITARIST
    "https://civitai.com/api/download/models/772201"
        # Flux harness gag
    "https://civitai.com/api/download/models/757279"
        # Flux Hairy Girls
    "https://civitai.com/api/download/models/751657"
        # Flux Ultimate Realistic Breast NIPPLES-GMR
    "https://civitai.com/api/download/models/781336"
        # Flux Mooning / Upskirt / Clothed-To-Nude
    "https://civitai.com/api/download/models/811513"
        # Lying Down Breast-Morph / Backtits
    "https://civitai.com/api/download/models/817285"
         # Boris Vallejo Style
    "https://civitai.com/api/download/models/760048"
         # Realistic Ghost Areolas-GMR
    "https://civitai.com/api/download/models/814029"
         # (Flux) Wet T-Shirt and Wet Clothes
    "https://civitai.com/api/download/models/810200"
         # [FLUX] - Frank Frazetta Style Oil Painting
    "https://civitai.com/api/download/models/792756"
         # OnOff for Flux (On/Off)
    "https://civitai.com/api/download/models/809563"
         # Pussy Spread
    "https://civitai.com/api/download/models/758979"
         # Pussy
    "https://civitai.com/api/download/models/789836"
         # Real Amateur Nudes [Flux]
    "https://civitai.com/api/download/models/797939"
         # Nudist Beach Flux
    "https://civitai.com/api/download/models/771531"
         # Sapieri for flux
    "https://civitai.com/api/download/models/728943"
           # Realistic Skin Texture style XL (Detailed Skin) + SD1.5 + Flux1D
    "https://civitai.com/api/download/models/804746"
           # FLUXTASTIC v3 - Boobs and More
    "https://civitai.com/api/download/models/732180"
           # Full Female Anatomy - Fineart Nudity - Flux Lora (NSFW) -Breasts/Pussy/Ass/and more
    "https://civitai.com/api/download/models/748526"
            # Spunky
    "https://civitai.com/api/download/models/821073"
            # perfect pussy
    "https://civitai.com/api/download/models/821168"
       # OnOff for Flux (On/Off)
    "https://civitai.com/api/download/models/809563"
       # COF
    "https://civitai.com/api/download/models/889626"
         #  cash transaction
    "https://civitai.com/api/download/models/735901"
         # Hidden SpyCam Changing Room Peephole FLUX
    "https://civitai.com/api/download/models/729352"
         # 2000s Style Mirror Selfie Nudes FLUX
    "https://civitai.com/api/download/models/755520" 
             # Flux The Boys Cosplay
    "https://civitai.com/api/download/models/891303" 
         # FLUX - Nekked
    "https://civitai.com/api/download/models/899821" 
          # Boreal-FD: (Boring Reality Flux-Dev LoRA)
    "https://civitai.com/api/download/models/810340" 
         # JBX Althletic Slim Women
    "https://civitai.com/api/download/models/830264" 
         # Flux Slingshot
    "https://civitai.com/api/download/models/777886" 
         # Strapless bikini tanlines concept
    "https://civitai.com/api/download/models/828148" 
         # FLUX-Remove Clothing V2.0
    "https://civitai.com/api/download/models/831470" 
         # Professional Nude Photography V2.0 (FLUX)
    "https://civitai.com/api/download/models/753099" 
         # Natural Breast Shape Pack (FLUX)
    "https://civitai.com/api/download/models/742127" 
         # ENF - Embarassed, Covering, Femine (FLUX)
    "https://civitai.com/api/download/models/732175" 
    # style of Robert McGinnis [FLUX] 298
    "https://civitai.com/api/download/models/829010" 
    #  Transparent Dress (WtSSTaDaMiT)
    "https://civitai.com/api/download/models/856044"
    #  Underboob Cutout (Flux)
    "https://civitai.com/api/download/models/811813"
     #  Oiled Skin
    "https://civitai.com/api/download/models/860331"
     #  ILLUSTRATION ~(FLUX)
    "https://civitai.com/api/download/models/890590"
     # Joschek's Takate Kote for Flux (Rope Bondage/Chest Harness)
    "https://civitai.com/api/download/models/889520"
     #  Extreme Detail Areola/Nipple (FLUX)
    "https://civitai.com/api/download/models/895844"
     #  Anus/Vulva Helper (FLUX)
    "https://civitai.com/api/download/models/890979"
    # nsfw-highress
     "https://civitai.com/api/download/models/848532" 
    # Wet Hair
     "https://civitai.com/api/download/models/839619" 
     # Pokies
     "https://civitai.com/api/download/models/856857" 
     # Cameltoe
     "https://civitai.com/api/download/models/839619" 
      # 35mm Photo - Flux
     "https://civitai.com/api/download/models/739373" 
      # Creampie - Flux
     "https://civitai.com/api/download/models/751154" 
       # Velma Dinkley Scooby Doo
     "https://civitai.com/api/download/models/842632" 
       # Rolf Armstron Style
     "https://civitai.com/api/download/models/868345" 
       # Jack Vettriano Style
     "https://civitai.com/api/download/models/845114" 
       # Zavy's Carnaval - Flux
     "https://civitai.com/api/download/models/825435" 
       # Omegle webcam [Flux Dev]
     "https://civitai.com/api/download/models/864334" 
      # Tinker bell (Peter Pan) Disney
     "https://civitai.com/api/download/models/755521" 
      # Omegle webcam [Flux Dev]
     "https://civitai.com/api/download/models/864334" 
     
)
CELEB_LORA_MODELS=(
    #
    # X-Labs Lora Collection
    #
    # Kirsty Alloe
    "https://civitai.com/api/download/models/819386"
    # Hilary Clinton
    "https://civitai.com/api/download/models/897296"
     # Kate Upton
    "https://civitai.com/api/download/models/819719"
     # Andrea Botez
    "https://civitai.com/api/download/models/820544"
     # Lexa Doig
    "https://civitai.com/api/download/models/820694"
     # Anna Kendrick
    "https://civitai.com/api/download/models/816420"
     # Michelle Trachtenberg
    "https://civitai.com/api/download/models/817964"
     # MSophie Lloyd
    "https://civitai.com/api/download/models/816372"
     # Billie Eillish
    "https://civitai.com/api/download/models/811511"
     # Sanna Marin
    "https://civitai.com/api/download/models/742013"
     # Selena Gomez
    "https://civitai.com/api/download/models/797208"
    #  Alexandria Ocasio-Cortez
    "https://civitai.com/api/download/models/810608"
     # Madonna
    "https://civitai.com/api/download/models/810656"
     # Sophie Lillis
    "https://civitai.com/api/download/models/804403"
     # Gwendoline Christie
    "https://civitai.com/api/download/models/808064"
    # Xenia Seeberg / Xev Bellringer
    "https://civitai.com/api/download/models/806203"
     # Daisy Ridley
    "https://civitai.com/api/download/models/809495"
     # Natalie Dormer
    "https://civitai.com/api/download/models/806759"
     # Florence Pugh
    "https://civitai.com/api/download/models/806933"
     # Imogen Dyer
    "https://civitai.com/api/download/models/742233"
     # Emilia Clarke
    "https://civitai.com/api/download/models/729722"
     # Gal Gadot
    "https://civitai.com/api/download/models/724060"
    # Mary Cherry
    "https://civitai.com/api/download/models/892961"
    # Nathalie Emmanuel
    "https://civitai.com/api/download/models/895862"
    # Meg.August
    "https://civitai.com/api/download/models/888695"
    
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

function provisioning_start() {
    if [[ ! -d /opt/environments/python ]]; then 
        export MAMBA_BASE=true
    fi
    source /opt/ai-dock/etc/environment.sh
    source /opt/ai-dock/bin/venv-set.sh comfyui

    # Get licensed models if HF_TOKEN set & valid
    if provisioning_has_valid_hf_token; then
        UNET_MODELS+=("https://huggingface.co/black-forest-labs/FLUX.1-dev/resolve/main/flux1-dev.safetensors")
        VAE_MODELS+=("https://huggingface.co/black-forest-labs/FLUX.1-dev/resolve/main/ae.safetensors")
    else
        UNET_MODELS+=("https://huggingface.co/black-forest-labs/FLUX.1-schnell/resolve/main/flux1-schnell.safetensors")
        VAE_MODELS+=("https://huggingface.co/black-forest-labs/FLUX.1-schnell/resolve/main/ae.safetensors")
        sed -i 's/flux1-dev\.safetensors/flux1-schnell.safetensors/g' /opt/ComfyUI/web/scripts/defaultGraph.js
    fi

    download_script
    provisioning_print_header
    provisioning_get_apt_packages
    provisioning_get_default_workflow
    provisioning_get_nodes
    provisioning_get_pip_packages
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/ckpt" \
        "${CHECKPOINT_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/lora" \
        "${LORA_MODELS[@]}"
    provisioning_get_models \
       "${WORKSPACE}/storage/stable_diffusion/models/lora/celeb" \
       "${CELEB_LORA_MODELS[@]}"
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