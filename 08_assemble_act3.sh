#!/usr/bin/env bash
set -euo pipefail

# ------------------------------------------------------------------------------
# 08_assemble_act3.sh
# Frame-accurate 120.00 BPM assembly for Act 3 / Rap Verse 1 (0:48.125 - 1:04.125 |
# 8 bars / 32 beats = 384 frames @ 24fps), with syllable-synced native rap clips
# (#20, #23, #24, #25), stitched onto act1_2b_rough_cut.mp4 (1155 frames)
# -> act1_3_rough_cut.mp4 (1539f) and muxed with Club_Ka_Bwaal.mp3
# -> act1_3_with_music.mp4.
# ------------------------------------------------------------------------------

AUDIO_FILE="${1:-Club_Ka_Bwaal.mp3}"

if [[ ! -f "act1_2b_rough_cut.mp4" ]]; then
  echo "Error: act1_2b_rough_cut.mp4 not found in $(pwd)"
  exit 1
fi

find_clip() {
  local prefix="$1"
  local found=""
  found=$(ls ${prefix}*.mp4 2>/dev/null | head -n 1 || true)
  echo "$found"
}

rm -rf trimmed_act3
mkdir -p trimmed_act3
> concat_act3.txt

# Format: "cut_id|prefix|start_time|vf_filter|target_frames"
# 9 cuts totaling exact 384 frames (16.000s):
SHOTS=(
  "act3_01_20_rap_entry|shot_20|00:00:00.05|setpts=PTS/1.22|48"
  "act3_02_21_crane_arc|shot_21|00:00:00.15|setpts=PTS/1.35|48"
  "act3_03_22_ots_zoya|shot_22|00:00:00.20|setpts=PTS/1.20|48"
  "act3_04_23_rap_echo|shot_23|00:00:00.55|setpts=PTS/1.02|48"
  "act3_05_24_rap_slam|shot_24|00:00:00.40|setpts=PTS/1.05|48"
  "act3_06_25_rap_dutch|shot_25|00:00:00.05|setpts=PTS/1.20|48"
  "act3_07_26a_macro_sunglasses|shot_26a|00:00:00.50|setpts=PTS/1.20|24"
  "act3_08_26b_zoya_void|shot_26b|00:00:00.00|setpts=PTS/1.0|24"
  "act3_09_27_face_to_face|shot_27|00:00:00.50|setpts=PTS/1.0|48"
)

for entry in "${SHOTS[@]}"; do
  IFS="|" read -r cut_id prefix start vf_filter frames <<< "$entry"
  input_file=$(find_clip "$prefix")

  if [[ -z "$input_file" ]]; then
    echo "Error: Could not find file matching ${prefix}*.mp4"
    exit 1
  fi

  out_file="trimmed_act3/${cut_id}_cut.mp4"
  echo "Processing $cut_id from $input_file ($start, $vf_filter -> ${frames} frames)..."

  ffmpeg -y -hide_banner -loglevel error \
    -ss "$start" -i "$input_file" \
    -vf "$vf_filter" -r 24 -frames:v "$frames" \
    -c:v libx264 -crf 18 -preset fast -pix_fmt yuv420p -an \
    "$out_file"

  echo "file '$out_file'" >> concat_act3.txt
done

echo "Stitching Act 3 rough cut..."
ffmpeg -y -hide_banner -loglevel error \
  -f concat -safe 0 -i concat_act3.txt \
  -c copy act3_rough_cut.mp4
echo "Created act3_rough_cut.mp4 (384 frames / 16.000s)"

printf "file 'act1_2b_rough_cut.mp4'\nfile 'act3_rough_cut.mp4'\n" > concat_act1_3.txt
ffmpeg -y -hide_banner -loglevel error \
  -f concat -safe 0 -i concat_act1_3.txt \
  -c copy act1_3_rough_cut.mp4
echo "Created act1_3_rough_cut.mp4 (1539 frames / 64.125s)"

if [[ -f "$AUDIO_FILE" ]]; then
  ffmpeg -y -hide_banner -loglevel error \
    -i act1_3_rough_cut.mp4 -i "$AUDIO_FILE" \
    -c:v copy -c:a aac -shortest act1_3_with_music.mp4
  echo "Created act1_3_with_music.mp4"
else
  echo "Note: '$AUDIO_FILE' not found; skipped audio mux."
fi
