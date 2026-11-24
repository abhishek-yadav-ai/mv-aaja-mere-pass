#!/usr/bin/env bash
set -euo pipefail

# ------------------------------------------------------------------------------
# 05_assemble_act2.sh
# Frame-accurate beat-sync trim, custom speed-ramp & stitch for Act 2 (Chorus 1:
# 0:15.4 - 0:30.7 | 32 beats @ 125 BPM = 368 frames @ 24fps).
#
# Supports either raw upload names (video_1.mp4 .. video_7.mp4) OR renamed
# shot files (shot_10a.mp4 .. shot_18.mp4), plus banked shot_04 / shot_07 clips.
# ------------------------------------------------------------------------------

AUDIO_FILE="${1:-Club_Ka_Bwaal.mp3}"

mkdir -p trimmed_act2
> concat_act2.txt

find_clip() {
  local primary="$1"
  local fallback="$2"
  local found=""
  found=$(ls ${primary}*.mp4 2>/dev/null | head -n 1 || true)
  if [[ -z "$found" && -n "$fallback" ]]; then
    found=$(ls ${fallback}*.mp4 2>/dev/null | head -n 1 || true)
  fi
  echo "$found"
}

# Format: "cut_id|primary_prefix|fallback_prefix|start_time|raw_dur|speed|target_frames"
SHOTS=(
  "shot_10a|video_1|shot_10a|00:00:00.40|0.96|1.0|23"
  "shot_10b|video_2|shot_10b|00:00:00.25|2.40|1.25|46"
  "shot_11|video_3|shot_11|00:00:00.00|2.88|1.5|46"
  "shot_12_bank07|shot_07||00:00:01.75|0.96|1.0|23"
  "shot_13|video_4|shot_13|00:00:00.00|2.88|1.5|46"
  "shot_14_bank04|shot_04||00:00:01.85|0.96|1.0|23"
  "shot_15|video_5|shot_15|00:00:00.00|2.88|1.5|46"
  "shot_16_tail10a|video_1|shot_10a|00:00:01.85|0.96|1.0|23"
  "shot_17|video_6|shot_17|00:00:00.50|1.92|1.0|46"
  "shot_18|video_7|shot_18|00:00:00.85|1.92|1.0|46"
)

for entry in "${SHOTS[@]}"; do
  IFS="|" read -r cut_id primary fallback start raw_dur speed frames <<< "$entry"
  input_file=$(find_clip "$primary" "$fallback")

  if [[ -z "$input_file" ]]; then
    echo "Error: Could not find file matching ${primary}*.mp4${fallback:+ or ${fallback}*.mp4}"
    exit 1
  fi

  out_file="trimmed_act2/${cut_id}_cut.mp4"
  echo "Processing $cut_id from $input_file ($start, raw ${raw_dur}s @ ${speed}x -> ${frames} frames)..."

  ffmpeg -y -hide_banner -loglevel error \
    -ss "$start" -i "$input_file" -t "$raw_dur" \
    -vf "setpts=PTS/${speed}" -r 24 -frames:v "$frames" \
    -c:v libx264 -crf 18 -preset fast -pix_fmt yuv420p -an \
    "$out_file"

  echo "file '$out_file'" >> concat_act2.txt
done

echo "Stitching Act 2 rough cut..."
ffmpeg -y -hide_banner -loglevel error \
  -f concat -safe 0 -i concat_act2.txt \
  -c copy act2_rough_cut.mp4

echo "Created act2_rough_cut.mp4 (368 frames / 15.33s)"

if [[ -f "act1_rough_cut.mp4" ]]; then
  printf "file 'act1_rough_cut.mp4'\nfile 'act2_rough_cut.mp4'\n" > concat_act1_2.txt
  ffmpeg -y -hide_banner -loglevel error \
    -f concat -safe 0 -i concat_act1_2.txt \
    -c copy act1_2_rough_cut.mp4
  echo "Created combined act1_2_rough_cut.mp4 (0:00.0 - 0:30.7)"

  if [[ -f "$AUDIO_FILE" ]]; then
    ffmpeg -y -hide_banner -loglevel error \
      -i act1_2_rough_cut.mp4 -i "$AUDIO_FILE" \
      -c:v copy -c:a aac -shortest act1_2_with_music.mp4
    echo "Created act1_2_with_music.mp4"
  fi
fi
