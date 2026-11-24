# Club Ka Bwaal — AI Music Video Production Bible

## 1. Technical & Timeline Constants
- **Audio Track:** `Club_Ka_Bwaal.mp3` (`2:54.58` / `174.58s`), verified **`120.00 BPM`** anchored at `0:00.12` *(zero phase drift from `0:16.12` to `2:48.12`; Act 1 and Act 2A were previously assembled using `125 BPM` math and re-locked onto the exact `120.00 BPM` downbeat at `0:32.125` / `771 frames` via `06_chorus1_tag.sh`)*.
- **Timeline Frame Rate:** `24 fps`
- **Verified `120.00 BPM` Integer Beat-to-Frame Math (Zero Drift):**
  - `1 beat` = `0.50s` (`12 frames`)
  - `2 beats` = `1.00s` (`24 frames`)
  - `4 beats` = `2.00s` (`48 frames`)
  - `6 beats` = `3.00s` (`72 frames` — 1 full raw Flow clip)
  - `8 bars (32 beats)` = `16.00s` (`384 frames`)
- **Resolution & Rendering:** Keep native Google Flow resolution (`640×360`). Never run Real-ESRGAN or AI upscalers (they over-sharpen dark club haze and introduce banding in shadow gradients).
- **FFmpeg Standard Encode:** `-r 24 -c:v libx264 -crf 18 -preset fast -pix_fmt yuv420p -an`

---

## 2. Characters & Set Ingredients (Google Flow)
- **`@char_aryan`:** Open black satin bomber jacket with intricate gold sleeve embroidery, black t-shirt, layered silver chain necklaces, confident closed-mouth smirk. **Sunglasses Continuity:** Wears **tinted amber sunglasses across ALL of Act 1 and ALL of Act 2 (`#01`, `#04`, `#05`, `#09`, `#10B`, `#13`, `#14`, `#17`, `#18`)** — keep them ON in Chorus 1B and Act 3 unless an intentional sunglasses-off beat is scripted.
- **`@char_zoya`:** Sparkling dark/purple sequined corset top, black high-waisted trousers, silver hoop earrings, stacked silver bangles, wavy dark hair, confident closed-mouth smirk/grin.
- **`@loc_club_crowded`:** Intimate upscale lounge-club room plate (etched glass partition, high-top cocktail table with cyan & magenta cocktails, red-and-gold draped doorway). Used in Act 1 (`#01`–`#09`) only; **omit** in dancefloor scenes so Google Flow does not lock onto Act 1's camera axis.
- **`@loc_void_lasers`:** High-contrast dark laser grid void used for `0.50s` (`12f` / `1-beat`) or `1.00s` (`24f` / `2-beat`) rhythmic punches.
- **Crowd Scale Rule:** Always specify an intimate upscale lounge-club with **~15 loosely spaced silhouetted clubgoers** and a cyan-magenta LED ceiling grid—never large festival crowds.

---

## 3. Google Flow Generation & Speed-Ramp Rules
- **Tag Placement:** Include `@char_aryan`, `@char_zoya`, `@loc_club_crowded`, and `@loc_void_lasers` **ONLY in Step 4 (Keyframe Image Prompts)**. Use **zero `@` tags in Step 5 (Video Animation Prompts)**—refer to characters generically as *"the man"* and *"the woman"* so Flow interpolates smoothly without resetting faces or outfits.
- **Keyframe & Clip Naming:** Always rename generated Step 4 keyframes in Google Flow to `kf_<shot_id>_start` (Start Frame) and `kf_<shot_id>_end` (End Frame, when used; Start-Only shots have only `kf_<shot_id>_start`), and rename Step 5 videos to `shot_<shot_id>`.
- **Flow Mode Selection:**
  - Use **Start + End Frame** for directional camera pushes or orbital arcs where the start and end angles differ substantially.
  - Use **Start Frame Only** for complex dancing, spins, or fast beat pulses (End Frames on spins cause limb warping, and End Frames on similar angles cause slow-motion pacing).
- **Avoid Full Body Turns:** Never prompt characters to turn their torso away while looking back over their shoulder (Omni rotates the body without rotating the head cleanly). Keep shoulders and face oriented forward and use straight backward steps or camera arcs instead.
- **Camera Grammar Variety:** Never stack consecutive centered MCU slow push-ins. Alternate across `90°` bird's-eye top-down spins, floor-level `16mm` footwork, dirty-foreground lateral slides, reverse pullbacks, backlit silhouettes, and macro detail cuts.
- **Native Dialogue / Singing Sync (Short Hooks):** For 4–5 syllable hook phrases (`1.5s–2.0s`), drop `"closed-mouth smirk"` in Step 4 in favor of `"lips slightly parted mid-song"`, prompt phonetic Hindi spacing + `"upbeat 120 BPM 2-second delivery"` in Step 5 with Flow audio enabled, then align Veo's audio syllable onsets to `Club_Ka_Bwaal.mp3` via FFmpeg `setpts` time-warping (and mute Flow audio `-an`).
- **Speed Ramping (`120.00 BPM`):** Only compress (`1.25×`–`1.5×`) clips that actually render slow-mo (`~0.7×`); keep already-active dance clips (`shot_c1b_1`, `shot_c1b_2`) and natural gesture, reaction, orbital, and transition shots at **`1.0×`–`1.1×`** (`24f` / `36f` / `48f` / `72f`) to avoid fast-forward jitter. Also trim sluggish static `0:00–1:00` intros (e.g., `shot_c1b_5`).

---

## 4. Current Assembly State & Full Song Structure Map (`0:00.00 – 2:54.58`)

### Workspace Documents & Scripts
- **Prompt Guides:** `act_1_production_prompts_trim_sheet.md`, `act_2_production_prompts_edit_guide.md`, `act_2b_chorus1b_prompts.md`, `act_3_production_prompts.md`, `prechorus_1_production_prompts.md`
- **Assembly Scripts:** `01_assemble_act1.sh`, `05_assemble_act2.sh`, `06_chorus1_tag.sh`, `07_assemble_chorus1b.sh`, `08_assemble_act3.sh`

### Current Assembly State (`0:00.00 – 1:04.125`)
- **Act 1 (`0:00.00 – 0:15.42`, Shots `#01`–`#09`, `370f`):** Assembled via `01_assemble_act1.sh` (combined inside `act1_2_rough_cut.mp4`).
- **Act 2A / Chorus 1A (`0:15.42 – 0:30.75`, Shots `#10A`–`#18`, `368f`):** Complete (`act2_rough_cut.mp4`, `act1_2_rough_cut.mp4`, `act1_2_with_music.mp4` — `738f` total).
- **Chorus 1A Closing Tag (`0:30.75 – 0:32.125`, `33f`, zero Flow credits):** Assembled via `06_chorus1_tag.sh` (`chorus1_tag_rough_cut.mp4` = `33f`, `act1_2_tagged_rough_cut.mp4` = `771f`, `act1_2_tagged_with_music.mp4` = `771f` / `32.125s`).
- **Act 2B / Chorus 1B v2 (`0:32.125 – 0:48.125`, `384f`, zero Act 1/2 recycling + 2 native lip-sync hooks):** Complete via `07_assemble_chorus1b.sh` (`chorus1b_rough_cut.mp4` = `384f`, `act1_2b_rough_cut.mp4` = `1155f`, `act1_2b_with_music.mp4` = `1155f` / `48.125s`), ending on `shot_c1b_t1` (`90°` cyan spotlight orbit) dead-on the `0:48.125` Act 3 rap entry.
- **Act 3 / Rap Verse 1 (`0:48.125 – 1:04.125`, Shots `#20`–`#27`, `384f`, 4 syllable-synced rap clips):** Complete via `08_assemble_act3.sh` (`act3_rough_cut.mp4` = `384f`, `act1_3_rough_cut.mp4` = `1539f`, `act1_3_with_music.mp4` = `1539f` / `64.125s`), ending on `shot_27` face-to-face orbital glide into Pre-Chorus 1 (`1:04.125`).

### Verified `120.00 BPM` Song Structure Map (`0:00.00 – 2:54.58`)

| Section | Timeline | Bars / Beats | Frames (`24 fps`) | Status & Key Lyrics / Musical Cues |
| :--- | :--- | :--- | :--- | :--- |
| **Intro (Act 1)** | `0:00.00 – 0:16.12` | 8 bars / 32b | `387f` *(cut at `370f`)* | **Done** • Instrumental + adlibs (*"Ooh yeah"*, *"Check it"*, *"Let's go"*, *"Tum aur main, let's make it go"*) • `0:15.1–0:16.1` vocal chop riser |
| **Chorus 1A (Act 2A + Tag)** | `0:16.12 – 0:32.12` | 8 bars / 32b | `384f` *(total w/ tag `771f`)* | **Done** • *"Aaja mere paas..."* → *"Beat pe hum dono milte hain jab"* • `0:31.40–0:32.10` bass dropout + *"Go, go!"* |
| **Chorus 1B (Act 2B)** | `0:32.12 – 0:48.12` | 8 bars / 32b | `384f` *(total `1155f`)* | **Done** (`07_assemble_chorus1b.sh`) • Zero-recycle v2 w/ `#C1B-S1`/`#C1B-S2` lip-sync, top-down spin, floor footwork, & `#C1B-T1` orbit |
| **Rap Verse 1 (Act 3)** | `0:48.12 – 1:04.12` | 8 bars / 32b | `384f` *(total `1539f`)* | **Done** (`08_assemble_act3.sh`) • *"Beat pe focus..."* • Syllable-synced `#20`/`#23`/`#24`/`#25`, `#26A` macro sunglasses, `#26B` laser void, `#27` face-to-face |
| **Pre-Chorus 1** | `1:04.12 – 1:16.12` | 6 bars / 24b | `288f` | **Prompts Ready** (`prechorus_1_production_prompts.md`) • *"Baahon mein aaja... door na jaa... Is crazy night ka maza tu utha!"* (`1:12.12` filtered kick, `1:14.12` riser) |
| **Chorus 2A** | `1:16.12 – 1:32.12` | 8 bars / 32b | `384f` | Pending • Full Chorus cycle • `1:30.12–1:32.10` bass dropout + *"Yeah!"* |
| **Chorus 2B** | `1:32.12 – 1:48.12` | 8 bars / 32b | `384f` | Pending • Full Chorus repeat • `1:46.12–1:47.50` bass dropout + `1:47.50` drum fill |
| **Rap Verse 2** | `1:48.12 – 2:02.12` | 7 bars / 28b | `336f` | Pending • *"Style tera killer..."* → *"Tere bina life meri empty net"* |
| **Bridge & Title Drop** | `2:02.12 – 2:18.12` | 8 bars / 32b | `384f` | Pending • *"Ab to bas tera... hi khayal hai / Is club mein hamara... hi bwaal hai!"* |
| **Final Chorus (Chorus 3)** | `2:18.12 – 2:34.12` | 8 bars / 32b | `384f` | Pending • Peak Chorus • `2:32.12–2:34.10` bass dropout |
| **Dance Break (Chant)** | `2:34.12 – 2:42.12` | 4 bars / 16b | `192f` | Pending • Heavy groove + crowd chant **"Hey! Hey! Hey! Hey!"** |
| **Outro Hook & Cold Tag** | `2:42.12 – 2:51.50` | 3 bars + tag | `~225f` | Pending • *"Beat pe hum dono..."* → *"Aaja mere paas..."* → *"Hum dono." — "Huh?"* (silence tail to `2:54.58`) |

### Unused Banked Clips Ledger (Post-Act 3 State)
- **`shot_02.mp4` (subwoofer macro):** `0.00–1.00s` (`24f`, allocated to Chorus 1B `#C1B-B1`) and `1.96–2.96s` (`24f`, still unused since `#26A` used new macro `shot_26a_51f8fa8e.mp4`) unused (`1.00–1.96s` used in Act 1 `#02`).
- **`shot_07.mp4` (`@loc_void_lasers` Zoya):** `1.31–1.75s` (`10f`) unused (`0.35–1.31s` used in Act 1 `#07`; `1.75–2.71s` used in Act 2 `#12`).
- **`shot_10a_a81f0a57.mp4` (crowd strobe):** `1.36–1.86s` (`12f`, allocated to Chorus 1B `#C1B-B3`) unused (`0.40–1.36s` used in `#10A`; `1.85–2.81s` used in `#16`).
- **`shot_17_34ef19af.mp4` (Aryan laser bounce):** `0.00–0.50s` (`12f`, allocated to `#C1B-B4`) and `2.42–2.92s` (`12f`, allocated to `#C1B-B6`) unused (`0.50–2.42s` used in `#17`).
- **`shot_18_51539dca.mp4` (duo hype two-shot):** `0.00–0.85s` (`20f`) unused (`0.85–2.77s` used in `#18`).
- **`shot_c1b_4_15ad0386.mp4` (calm duo-parting walk):** Full `3.00s` (`72f`) banked untouched in root folder (`Pre-Chorus 1 #30` Option A or Bridge `2:02.12`).
- **`shot_26b_8ed0cca1.mp4` (Zoya `@loc_void_lasers` hair-toss 3-hit bank):** `1.00–2.00s` (`24f`, Chorus 2A/2B) and `2.00–3.00s` (`24f`, Outro) unused (`0.00–1.00s` used in Act 3 `#26B`).
- **Spent Clips (no remaining unique windows):** `shot_04.mp4` (`0.18–0.85s` `16f` spent in `06_chorus1_tag.sh`; `0.85–1.81s` in Act 1 `#04`; `1.85–2.81s` in Act 2 `#14`) and `shot_08.mp4` (`0.35–2.27s` in Act 1 `#08`; `2.27–2.98s` `17f` spent in `06_chorus1_tag.sh`).

### Workflow Backlog / Next-Session TODOs
- **Parallel Google Flow Tab Automation:** Investigate operating across multiple parallel browser tabs/workers in `Aaja Mere Pass` to generate multiple keyframes/videos simultaneously, using resilient tile matching (by asset ID / prompt text / stable DOM identifiers rather than positional grid indices, since newly created tiles shift grid positions dynamically).
- **Standard Flow Cost Settings:** Always use `Nano Banana 2.1 · 16:9 · x1` (`0` credits) for Step 4 keyframes and `Video · Frames · Omni 1.2 Flash · 360p · 3s · x1` (`3` credits/video) for Step 5 videos, renaming keyframes immediately to `kf_<shot_id>_start` / `kf_<shot_id>_end`.

---

## 5. Antigravity Agent Starter Prompt
> `Read GEMINI.md and prechorus_1_production_prompts.md to load our verified 120.00 BPM rules, keyframe naming rule (kf_<shot_id>_start / kf_<shot_id>_end), sunglasses continuity, and current timeline state (0:00.00–1:04.125 / 1539f via 08_assemble_act3.sh). Check the Flow settings (360p · 3s · x1 @ 3 credits/video) and also tackle our backlog item on parallel Google Flow tabs (resilient to dynamic DOM tile shifts) if feasible, then generate Pre-Chorus 1 (#28–#33, deciding whether to use banked shot_c1b_4_15ad0386.mp4 or generate a new #30), syllable-sync #28 and #31 via FFmpeg setpts, write and run 09_assemble_prechorus1.sh (1:04.125–1:16.125 / 288f) stitched onto act1_3_rough_cut.mp4 (total 1827f) and muxed with Club_Ka_Bwaal.mp3. Also draft Chorus 2A/2B (1:16.125–1:48.125) prompts when ready.`
