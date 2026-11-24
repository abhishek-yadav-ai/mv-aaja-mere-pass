#!/usr/bin/env bash
set -euo pipefail

# ------------------------------------------------------------------------------
# 06_chorus1_tag.sh
# Appends a 2-cut, 33-frame (1.375s) zero-credit closing tag onto
# act1_2_rough_cut.mp4 (738f / 30.75s) so Chorus 1A resolves cleanly onto
# the verified 120.00 BPM Chorus 1B downbeat at 0:32.125 (771 frames).
#
# Cuts (all unused banked windows):
#   #19A: shot_04*.mp4 @ 00:00:00.18 -> 16 frames (0.667s)
#   #19B: shot_08*.mp4 @ 00:00:02.27 -> 17 frames (0.708s)
# ------------------------------------------------------------------------------

AUDIO_FILE="${1:-Club_Ka_Bwaal.mp3}"

if [[ ! -f "act1_2_rough_cut.mp4" ]]; then
  echo "Error: act1_2_rough_cut.mp4 not found in $(pwd)"
  exit 1
fi

shot04=$(ls shot_04*.mp4 2>/dev/null | head -n 1 || true)
shot08=$(ls shot_08*.mp4 2>/dev/null | head -n 1 || true)

if [[ -z "$shot04" ]]; then
  echo "Error: Could not find shot_04*.mp4"
  exit 1
fi

if [[ -z "$shot08" ]]; then
  echo "Error: Could not find shot_08*.mp4"
  exit 1
fi

mkdir -p trimmed_tag
> concat_tag.txt

echo "Trimming #19A from $shot04 (00:00:00.18 -> 16 frames @ 24fps)..."
ffmpeg -y -hide_banner -loglevel error \
  -ss 00:00:00.18 -i "$shot04" \
  -r 24 -frames:v 16 \
  -c:v libx264 -crf 18 -preset fast -pix_fmt yuv420p -an \
  trimmed_tag/shot_19a_bank04_cut.mp4
echo "file 'trimmed_tag/shot_19a_bank04_cut.mp4'" >> concat_tag.txt

echo "Trimming #19B from $shot08 (00:00:02.27 -> 17 frames @ 24fps)..."
ffmpeg -y -hide_banner -loglevel error \
  -ss 00:00:02.27 -i "$shot08" \
  -r 24 -frames:v 17 \
  -c:v libx264 -crf 18 -preset fast -pix_fmt yuv420p -an \
  trimmed_tag/shot_19b_bank08_cut.mp4
echo "file 'trimmed_tag/shot_19b_bank08_cut.mp4'" >> concat_tag.txt

echo "Stitching 33-frame closing tag..."
ffmpeg -y -hide_banner -loglevel error \
  -f concat -safe 0 -i concat_tag.txt \
  -c copy chorus1_tag_rough_cut.mp4

printf "file 'act1_2_rough_cut.mp4'\nfile 'chorus1_tag_rough_cut.mp4'\n" > concat_act1_2_tagged.txt
ffmpeg -y -hide_banner -loglevel error \
  -f concat -safe 0 -i concat_act1_2_tagged.txt \
  -c copy act1_2_tagged_rough_cut.mp4

echo "Created act1_2_tagged_rough_cut.mp4 (771 frames / 32.125s)"

if [[ -f "$AUDIO_FILE" ]]; then
  ffmpeg -y -hide_banner -loglevel error \
    -i act1_2_tagged_rough_cut.mp4 -i "$AUDIO_FILE" \
    -c:v copy -c:a aac -shortest act1_2_tagged_with_music.mp4
  echo "Created act1_2_tagged_with_music.mp4"
else
  echo "Note: '$AUDIO_FILE' not found; skipped audio mux."
fi
