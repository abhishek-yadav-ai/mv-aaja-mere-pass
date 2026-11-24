#!/usr/bin/env bash
set -euo pipefail

# ------------------------------------------------------------------------------
# 07_assemble_chorus1b.sh (v2 — Zero Act 1/2 Recycling + Native Lip-Sync)
# Frame-accurate 120.00 BPM assembly for Chorus 1B (0:32.125 - 0:48.125 |
# 8 bars / 32 beats = 384 frames @ 24fps), stitched onto
# act1_2_tagged_rough_cut.mp4 (771 frames) -> act1_2b_rough_cut.mp4 (1155f)
# and muxed with Club_Ka_Bwaal.mp3 -> act1_2b_with_music.mp4.
# ------------------------------------------------------------------------------

AUDIO_FILE="${1:-Club_Ka_Bwaal.mp3}"

if [[ ! -f "act1_2_tagged_rough_cut.mp4" ]]; then
  echo "Error: act1_2_tagged_rough_cut.mp4 not found in $(pwd)"
  exit 1
fi

find_clip() {
  local prefix="$1"
  local found=""
  found=$(ls ${prefix}*.mp4 2>/dev/null | head -n 1 || true)
  echo "$found"
}

rm -rf trimmed_c1b
mkdir -p trimmed_c1b
> concat_c1b.txt

# Format: "cut_id|prefix|start_time|vf_filter|target_frames"
# 9 completely distinct camera grammars totaling exact 384 frames (16.000s):
SHOTS=(
  "c1b_01_s1_aaja|shot_c1b_s1|00:00:00.55|setpts=PTS/1.05|48"
  "c1b_02_w1_topdown|shot_c1b_w1|00:00:00.25|setpts=PTS/1.0|48"
  "c1b_03_m1_footwork|shot_c1b_m1|00:00:00.25|setpts=PTS/1.0|36"
  "c1b_04_aryan_cu|shot_c1b_3|00:00:00.15|setpts=PTS/1.0|48"
  "c1b_05_whip_crowd|shot_c1b_5|00:00:01.00|setpts=PTS/1.0|36"
  "c1b_06_duo_dance|shot_c1b_1|00:00:00.25|setpts=PTS/1.0|36"
  "c1b_07_sil_profile|shot_c1b_sil|00:00:01.00|setpts=PTS/1.0|36"
  "c1b_08_s2_beatpe|shot_c1b_s2|00:00:00.12|setpts=PTS/1.0|48"
  "c1b_09_t1_orbit|shot_c1b_t1|00:00:00.20|setpts=PTS/1.25|48"
)

for entry in "${SHOTS[@]}"; do
  IFS="|" read -r cut_id prefix start vf_filter frames <<< "$entry"
  input_file=$(find_clip "$prefix")

  if [[ -z "$input_file" ]]; then
    echo "Error: Could not find file matching ${prefix}*.mp4"
    exit 1
  fi

  out_file="trimmed_c1b/${cut_id}_cut.mp4"
  echo "Processing $cut_id from $input_file ($start, $vf_filter -> ${frames} frames)..."

  ffmpeg -y -hide_banner -loglevel error \
    -ss "$start" -i "$input_file" \
    -vf "$vf_filter" -r 24 -frames:v "$frames" \
    -c:v libx264 -crf 18 -preset fast -pix_fmt yuv420p -an \
    "$out_file"

  echo "file '$out_file'" >> concat_c1b.txt
done

echo "Stitching Chorus 1B v2 rough cut..."
ffmpeg -y -hide_banner -loglevel error \
  -f concat -safe 0 -i concat_c1b.txt \
  -c copy chorus1b_rough_cut.mp4
echo "Created chorus1b_rough_cut.mp4 (384 frames / 16.000s)"

printf "file 'act1_2_tagged_rough_cut.mp4'\nfile 'chorus1b_rough_cut.mp4'\n" > concat_act1_2b.txt
ffmpeg -y -hide_banner -loglevel error \
  -f concat -safe 0 -i concat_act1_2b.txt \
  -c copy act1_2b_rough_cut.mp4
echo "Created act1_2b_rough_cut.mp4 (1155 frames / 48.125s)"

if [[ -f "$AUDIO_FILE" ]]; then
  ffmpeg -y -hide_banner -loglevel error \
    -i act1_2b_rough_cut.mp4 -i "$AUDIO_FILE" \
    -c:v copy -c:a aac -shortest act1_2b_with_music.mp4
  echo "Created act1_2b_with_music.mp4"
else
  echo "Note: '$AUDIO_FILE' not found; skipped audio mux."
fi
