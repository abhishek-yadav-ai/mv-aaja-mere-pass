#!/usr/bin/env bash
set -euo pipefail

# ------------------------------------------------------------------------------
# 01_assemble_act1.sh
# Frame-accurate beat-sync trim & stitch for Act 1 (Shots #01-#09 @ 125 BPM)
# Optionally muxes Club_Ka_Bwaal.mp3 if present in the working directory.
# ------------------------------------------------------------------------------

AUDIO_FILE="${1:-Club_Ka_Bwaal.mp3}"

mkdir -p trimmed
> concat_list.txt

# Format: "filename_prefix|start_time|exact_beat_duration"
SHOTS=(
  "shot_01|00:00:00.85|1.92"
  "shot_02|00:00:01.00|0.96"
  "shot_03|00:00:00.25|1.92"
  "shot_04|00:00:00.85|0.96"
  "shot_05|00:00:00.35|1.92"
  "shot_06|00:00:00.80|1.92"
  "shot_07|00:00:00.35|0.96"
  "shot_08|00:00:00.35|1.92"
  "shot_09|00:00:00.12|2.88"
)

for entry in "${SHOTS[@]}"; do
  IFS="|" read -r prefix start dur <<< "$entry"
  input_file=$(ls ${prefix}*.mp4 2>/dev/null | head -n 1 || true)

  if [[ -z "$input_file" ]]; then
    echo "Error: No file found matching ${prefix}*.mp4"
    exit 1
  fi

  out_file="trimmed/${prefix}_cut.mp4"
  echo "Trimming $input_file ($start -> +${dur}s)..."

  # Re-encode at CRF 18 so cuts land on exact sub-second beat frames
  ffmpeg -y -hide_banner -loglevel error \
    -ss "$start" -i "$input_file" -t "$dur" \
    -c:v libx264 -crf 18 -preset fast -pix_fmt yuv420p -an \
    "$out_file"

  echo "file '$out_file'" >> concat_list.txt
done

echo "Stitching Act 1 rough cut..."
ffmpeg -y -hide_banner -loglevel error \
  -f concat -safe 0 -i concat_list.txt \
  -c copy act1_rough_cut.mp4

echo "Created act1_rough_cut.mp4"

if [[ -f "$AUDIO_FILE" ]]; then
  echo "Muxing audio track ($AUDIO_FILE)..."
  ffmpeg -y -hide_banner -loglevel error \
    -i act1_rough_cut.mp4 -i "$AUDIO_FILE" \
    -c:v copy -c:a aac -shortest act1_with_music.mp4
  echo "Created act1_with_music.mp4"
else
  echo "Note: '$AUDIO_FILE' not found; skipped audio mux."
fi
