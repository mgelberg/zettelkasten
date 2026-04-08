#!/bin/bash
# Eurorack Module Manual Downloader
# Run this script in your terminal to download all found manuals.
# Usage: bash download_manuals.sh
# Requires: curl

DEST="${1:-.}"  # Destination folder, defaults to current directory
mkdir -p "$DEST"

echo "Downloading Eurorack module manuals to: $DEST"
echo "=========================================="

download() {
  local name="$1"
  local url="$2"
  local file="$3"
  if [ -f "$DEST/$file" ]; then
    echo "✓ Already exists: $file"
  else
    echo "↓ Downloading: $name..."
    curl -L -o "$DEST/$file" "$url" -s --max-time 30 && echo "  ✓ Saved as $file" || echo "  ✗ FAILED: $name"
  fi
}

# --- Moog Music ---
download "Moog Mother-32" \
  "https://cdn.inmusicbrands.com/Moog/Mother32/Mother_32_Users_Manual.pdf" \
  "mother32_manual.pdf"

# --- Instruō ---
download "Ts-L" \
  "https://www.instruomodular.com/wp-content/uploads/2022/02/Ts-L-V2-Manual.pdf" \
  "ts-l_manual.pdf"

download "Ceis" \
  "https://www.instruomodular.com/wp-content/uploads/2019/09/Ceis-Manual-A5-v.2.pdf" \
  "ceis_manual.pdf"

download "arbhar" \
  "https://www.instruomodular.com/wp-content/uploads/2023/10/Arbhar-Manual-Firmware-2.0-A5.pdf" \
  "arbhar_manual.pdf"

# arbhar expander is documented within the arbhar manual (see arbhar_manual.pdf)

# --- Mutable Instruments ---
download "Plaits" \
  "https://pichenettes.github.io/mutable-instruments-documentation/modules/plaits/downloads/plaits_quickstart.pdf" \
  "plaits_manual.pdf"

download "Stages" \
  "https://pichenettes.github.io/mutable-instruments-documentation/modules/stages/downloads/stages_quickstart.pdf" \
  "stages_manual.pdf"

download "Ears" \
  "https://pichenettes.github.io/mutable-instruments-documentation/modules/ears/downloads/ears_quickstart.pdf" \
  "ears_manual.pdf"

download "Veils" \
  "https://pichenettes.github.io/mutable-instruments-documentation/modules/veils_2020/downloads/veils_quickstart.pdf" \
  "veils_manual.pdf"

download "Ripples" \
  "https://pichenettes.github.io/mutable-instruments-documentation/modules/ripples_2020/downloads/ripples_quickstart.pdf" \
  "ripples_manual.pdf"

# --- Industrial Music Electronics ---
download "Piston Honda MK III" \
  "https://ime-assets.s3.amazonaws.com/uploads/manual/manual/24/phmk3manual11.pdf" \
  "piston_honda_mkiii_manual.pdf"

# --- Intellijel ---
download "Scales" \
  "https://intellijel.com/downloads/manuals/scales_manual_1.01_2021.05.11.pdf" \
  "scales_manual.pdf"

download "Shifty" \
  "https://intellijel.com/downloads/manuals/shifty_manual_1.11_2019.01.02.pdf" \
  "shifty_manual.pdf"

download "Quadratt 1U" \
  "https://intellijel.com/downloads/manuals/quadratt-1u_manual_2021.07.26.pdf" \
  "quadratt_1u_manual.pdf"

download "DUAL VCA 1U" \
  "https://intellijel.com/downloads/manuals/dual-vca-1u_manual_2021.08.03.pdf" \
  "dual_vca_1u_manual.pdf"

download "Buff Mult 1U" \
  "https://intellijel.com/downloads/manuals/buff-mult-1u_manual_2018.09.13.pdf" \
  "buff_mult_1u_manual.pdf"

download "Switched Mult 1U" \
  "https://intellijel.com/downloads/manuals/switched-mult-1u_manual_2021.03.21.pdf" \
  "switched_mult_1u_manual.pdf"

download "Zeroscope 1U" \
  "https://intellijel.com/downloads/manuals/zeroscope-1u_manual_2020.10.26.pdf" \
  "zeroscope_1u_manual.pdf"

# --- 2hp ---
download "Tune (Black Panel)" \
  "https://static1.squarespace.com/static/573b5370b09f9524489340f2/t/5919f256bebafbd995a30cd2/1494872663474/Tune_Manual.pdf" \
  "2hp_tune_manual.pdf"

download "Mix" \
  "https://static1.squarespace.com/static/573b5370b09f9524489340f2/t/65ef3c5767789d29a07e818d/1710177367504/Mix_Manual_2023.pdf" \
  "2hp_mix_manual.pdf"

download "Avert (Black Panel)" \
  "https://www.analoguehaven.com/2hp/avert/manual.pdf" \
  "2hp_avert_manual.pdf"

download "Buff" \
  "https://lucyinc.squarespace.com/s/Buff_Manual_2023.pdf" \
  "2hp_buff_manual.pdf"

download "Loop (Black Panel)" \
  "https://static1.squarespace.com/static/573b5370b09f9524489340f2/t/603edb0ab9f7a73c0cf80bc3/1614732042619/Loop_gettingstarted.pdf" \
  "2hp_loop_manual.pdf"

# --- Noise Engineering ---
download "Basimilus Iteritas Alter" \
  "https://vintageking.com/amfile/file/download/file/734/product/20832/" \
  "basimilus_iteritas_alter_manual.pdf"

# Roti Pola has HTML-only manual: https://manuals.noiseengineering.us/rp/

# --- Befaco ---
download "Kickall" \
  "https://befaco.org/docs/Kickall/Kickall_User_Manual.pdf" \
  "kickall_manual.pdf"

# --- ALM Busy Circuits ---
download "Pip Slope mk II" \
  "https://assets.busycircuits.com/docs/alm028-manual.pdf" \
  "pip_slope_mkii_manual.pdf"

download "Pamela's NEW Workout" \
  "https://assets.busycircuits.com/docs/alm017-manual.pdf" \
  "pnw_manual.pdf"

download "Pamela's PRO Workout" \
  "https://assets.busycircuits.com/docs/alm034-manual.pdf" \
  "ppw_manual.pdf"

# --- Joranalogue ---
download "Compare 2" \
  "https://www.rawvoltage.wien/pdf-attachments/compare-2-user-manual.pdf" \
  "compare2_manual.pdf"

download "Select 2" \
  "https://www.analoguehaven.com/joranalogue-audio-design/select-2/manual.pdf" \
  "select2_manual.pdf"

download "Receive 2" \
  "https://analoguehaven.com/joranalogue-audio-design/receive-2/manual.pdf" \
  "receive2_manual.pdf"

# --- Doepfer ---
download "A-148 (Dual S&H)" \
  "https://doepfer.de/a100_man/A148_man.pdf" \
  "doepfer_a148_manual.pdf"

# --- Tiptop Audio ---
download "Buchla 292t" \
  "https://tiptopaudio.com/manuals/Buchla_&_Tiptop_Audio_292t.pdf" \
  "buchla_292t_manual.pdf"

# --- Make Noise ---
# MultiMod manual already present as: multimod-manual.pdf

download "Maths" \
  "https://www.makenoisemusic.com/wp-content/uploads/2024/03/MATHSmanual2013.pdf" \
  "maths_manual.pdf"

download "Morphagene" \
  "https://www.makenoisemusic.com/wp-content/uploads/2024/03/morphagene-manual.pdf" \
  "morphagene_manual.pdf"

download "Mimeophon" \
  "https://www.makenoisemusic.com/wp-content/uploads/2024/03/mimeophon-manual.pdf" \
  "mimeophon_manual.pdf"

download "X-PAN" \
  "https://www.makenoisemusic.com/wp-content/uploads/2024/03/x-pan-manual.pdf" \
  "x-pan_manual.pdf"

# --- Xaoc Devices ---
# Belgrad manual already present as: xaoc_belgrad_manual_A4.pdf

# --- Bastl Instruments ---
download "Ikarie" \
  "https://bastl-instruments.com/eurorack/modules/ikarie/ikarie-manual.pdf" \
  "ikarie_manual.pdf"

# --- Michigan Synth Works (MicroTides = Tides V2 clone) ---
download "MicroTides (Tides V2 manual)" \
  "https://pichenettes.github.io/mutable-instruments-documentation/modules/tides_2018/downloads/tides_quickstart.pdf" \
  "microtides_tides_v2_manual.pdf"

# --- Qu-Bit Electronix ---
download "Data Bender" \
  "https://www.analoguehaven.com/qu-bit-electronix/data-bender/manual.pdf" \
  "data_bender_manual.pdf"

# --- Cosmotronic ---
download "Messor" \
  "https://drive.google.com/uc?export=download&id=1N3yUDQhhb-rLvTK2UfMwucxCgW51emRw" \
  "messor_manual.pdf"

# --- Malstrom ---
download "Wyvern" \
  "https://files.pixpa.com/782433/1744381668006-1792.pdf" \
  "wyvern_manual.pdf"

# --- Expert Sleepers ---
# ES-8 manual is HTML only: https://www.expert-sleepers.co.uk/es8usermanual.html

echo ""
echo "=========================================="
echo "Done! Check $DEST for downloaded manuals."
echo ""
echo "NOTE: The following modules have HTML-only manuals (no PDF to download):"
echo "  - Roti Pola (Noise Engineering): https://manuals.noiseengineering.us/rp/"
echo "  - STEP FADER MKII (Tesseract Modular): https://www.tesseractmodular.com/manuals/"
echo "  - ES-8 (Expert Sleepers): https://www.expert-sleepers.co.uk/es8usermanual.html"
echo ""
echo "NOTE: The following modules had no manual found:"
echo "  - VM (Division 6)"
echo "  - 3x MIA (Happy Nerding)"
echo "  - Pro Output (WMD)"
echo "  - Uryan Modular MLTPL AlfaBeta"
